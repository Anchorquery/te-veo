const { verifyToken } = require('../utils/handleToken');
const {
  handleErrorResponse,
  handleHttpError,
} = require('../utils/handleError');

const checkAuth = async (req, res, next) => {
  try {
    const token = req.headers['x-access-token'];
    if (!token) {
      handleErrorResponse(res, 'NOT_TOKEN_PROVIDED', 409);
      return;
    }
    const tokenData = await verifyToken(token);

    if (tokenData._id) {
      return next();
    } else {
      handleErrorResponse(res, 'NOT_ALLOW', 409);
    }
  } catch (e) {
    handleHttpError(res, e);
  }
};

module.exports = checkAuth;
