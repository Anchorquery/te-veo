const Users = require('../models/users');
const { verifyToken } = require('../utils/handleToken');

const isAdmin = async (req, res, next) => {
  const token = req.headers['x-access-token'];
  if (token) {
    const decodedToken = await verifyToken(req,token);
    if (decodedToken.role === 'admin') {
      return next();
    }
  }
  return res.status(401).json({ message: 'Not authorized' });
};

module.exports = { isAdmin };
