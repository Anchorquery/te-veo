const { encrypt, compare } = require('../utils/handleJwt');
const {
  handleHttpError,
  handleErrorResponse,
} = require('../utils/handleError');
const {
  tokenSign,
  tokenEmail,
  codeVerifyEmail,
} = require('../utils/handleToken');
const {
  SendEmailPassword,
  SendUserValidationEmail,
} = require('../utils/handleEmail');
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

    if (body.role) {
      handleErrorResponse(res, 'route protected rol not allow', 401);
      return;
    }

    const checkIsExist = await userModel.findOne({ email: body.email });
    if (checkIsExist) {
      handleErrorResponse(res, 'USER_EXISTS', 401);
      return;
    }
    const password = await encrypt(body.password);

    body.password = password;

    const data = await userModel.create(body);

    const validationCode = await codeVerifyEmail();

    data.validationCode = validationCode;

    await data.save();

    await SendUserValidationEmail({
      email: data.email,
      name: data.name,
      validationCode: data.validationCode,
    });

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
    const changePasswordCode = await tokenEmail();
    user.changePasswordCode = changePasswordCode;
    await usuario.save();

    await SendEmailPassword({
      email: user.email,
      name: user.name,
      changePasswordCode: user.changePasswordCode,
    });

    res.json({ msg: 'Codigo Enviado Exitosamente' });
  } catch (e) {
    handleHttpError(res, 'ERROR_GET_ITEM');
  }
};

const newPassword = async (req, res) => {
  const { changePasswordCode } = req.params;
  const { password } = req.body;

  const user = await userModel.findOne({ changePasswordCode });

  if (user) {
    const pass = await encrypt(password);
    user.password = pass;
    user.changePasswordCode = '';
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

const validateUser = async (req, res) => {
  const { validationCode, email } = req.body;

  const user = await userModel.findOne({ email });

  if (user.validationCode == validationCode) {
    user.confirm = true;
    user.status = true;
    user.validationCode = '';
    await user.save();
    try {
      res.json({ msg: 'User validated' });
    } catch (error) {
      console.log(error);
    } 
  } else {
    const error = new Error('validationCode invalid');
    return res.status(404).json({ msg: error.message });
  }
};

const newValidation = async (req, res) => {
  const { email } = req.body;

  const user = await userModel.findOne({ email });

  if (!user) {
    const error = new Error('No user with this email');
    return res.status(404).json({ msg: error.message });
  }
  if (user.confirm) {
    const error = new Error('user already validated');
    return res.status(404).json({ msg: error.message });
  }

  try {
    const validationCode = await codeVerifyEmail();
    user.validationCode = validationCode;
    await user.save();

    await SendUserValidationEmail({
      email: user.email,
      name: user.name,
      validationCode: user.validationCode,
    });

    res.json({ msg: 'Codigo sended' });
  } catch (e) {
    handleHttpError(res, e);
  }
};

module.exports = {
  loginCtrl,
  registerCtrl,
  forgotPassword,
  newPassword,
  validateUser,
  newValidation,
};
