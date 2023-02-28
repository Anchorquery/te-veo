const jwt = require('jsonwebtoken');

const tokenSign = async (user) => {
  return jwt.sign(
    {
      _id: user._id,
      role: user.role,
    },
    process.env.JWT_ACCESS_TOKEN_SECRET,
    {
      expiresIn: '365d', //1 year
    },
  );
};

const tokenEmail = async () => {
  const random = Math.random().toString(32).substring(2);
  const date = Date.now().toString(32);
  const rv = random + date;
  return jwt.sign(
    {
      rv,
    },
    process.env.JWT_ACCESS_TOKEN_SECRET,
    {
      expiresIn: '0.25h', //1 year
    },
  );
};

const verifyToken = async (token) => {
  try {
    return await jwt.verify(token, process.env.JWT_ACCESS_TOKEN_SECRET);
  } catch (e) {
    return null;
  }
};

const decodeSign = (token) => {
  return jwt.decode(token, null);
};

module.exports = { tokenSign, decodeSign, verifyToken, tokenEmail };