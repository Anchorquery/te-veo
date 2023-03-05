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

const codeVerifyEmail = async () => {
  minm = 100000;
  var maxm = 999999;
  return Math.floor(Math.random() * (maxm - minm + 1)) + minm;
};

const verifyToken = async (token) => {
  try { 


    const tokenData = await jwt.verify(token, process.env.JWT_ACCESS_TOKEN_SECRET);


    // si el token no es valido, lanzo un error

    if (!tokenData) {
      return null;
    }

    // si el token es valido, devuelvo los datos del usuario

    return tokenData;


    
  } catch (e) {
    return null;
  }
};

const decodeSign = (token) => {
  return jwt.decode(token, null);
};

module.exports = {
  tokenSign,
  decodeSign,
  verifyToken,
  tokenEmail,
  codeVerifyEmail,
};
