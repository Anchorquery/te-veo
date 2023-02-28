const { encrypt, compare } = require('../utils/handleJwt');
const {
  handleHttpError,
  handleErrorResponse,
} = require('../utils/handleError');
const { tokenSign, tokenEmail } = require('../utils/handleToken');
const { SendEmailPassword } = require('../utils/handleEmail');
const { userModel } = require('../models');

const loginCtrl = async (req, res, next) => {
  try {
    const body = req.body;

    const user = await userModel.findOne({ email: body.email });

    if (!user) {
      handleErrorResponse(res, 'USER_NOT_EXISTS', 404);
      return;
    }
    const checkPassword = await compare(body.password, user.password);

    if (!checkPassword) {
      handleErrorResponse(res, 'PASSWORD_INVALID', 404);
      return;
    }

    const tokenJwt = await tokenSign(user);

    delete user.password;

    const data = {
      token: tokenJwt,
      user: user,
    };
    return res.json(data);
  } catch (e) {
    handleHttpError(res, e);
  }
};

const registerCtrl = async (req, res) => {
  try {
    const body = req.body;

    const checkIsExist = await userModel.findOne({ email: body.email });
    if (checkIsExist) {
      handleErrorResponse(res, 'USER_EXISTS', 401);
      return;
    }
    const password = await encrypt(body.password);

    body.password = password;

    const data = await userModel.create(body);

    res.send({ data });
  } catch (e) {
    handleHttpError(res, e);
  }
};

const forgotPassword = async (req, res) => {
  const { email } = req.body;
  const user = await userModel.findOne({ email });
  if (!user) {
    const error = new Error('No user with this email');
    return res.status(404).json({ msg: error.message });
  }

  try {
    const token = await tokenEmail();
    user.token = token;
    await usuario.save();

    await SendEmailPassword({
      email: user.email,
      name: user.name,
      token: user.token,
    });

    res.json({ msg: 'Codigo Enviado Exitosamente' });
  } catch (e) {
    handleHttpError(res, 'ERROR_GET_ITEM');
  }
};

const newPassword = async (req, res) => {
  const { token } = req.params;
  const { password } = req.body;

  const user = await userModel.findOne({ token });

  if (user) {
    const pass = await encrypt(password);
    user.password = pass;
    user.token = '';
    await user.save();
    try {
      res.json({ msg: 'Password changed' });
    } catch (error) {
      console.log(error);
    }
  } else {
    const error = new Error('Token invalid');
    return res.status(404).json({ msg: error.message });
  }
};

module.exports = {
  loginCtrl,
  registerCtrl,
  forgotPassword,
  newPassword,
};
