const express = require('express');
const router = express.Router();
const {
  registerCtrl,
  loginCtrl,
  forgotPassword,
  newPassword,
  validateUser,
  newValidation,
} = require('../controllers/auth');
const {
  validateRegister,
  validateLogin,
  validateVerification,
  validateCode,
  validatePassword,
} = require('../validators/auth');
const { validateId } = require('../validators/user');
const { isAdmin } = require('../middleware/newAuth');
const authMiddleware = require('../middleware/auth');

const { getItems, updateItem, deleteItem } = require('../controllers/user');

router.post(
  '/InsertUser',
  authMiddleware,
  isAdmin,
  validateRegister,
  registerCtrl,
);
router.get('/ListUser', authMiddleware, isAdmin, getItems);
router.put('/UpdateUser/:id', authMiddleware, isAdmin, validateId, updateItem);
router.delete(
  '/DeleteUser/:id',
  authMiddleware,
  isAdmin,
  validateId,
  deleteItem,
);

router.post('/register', validateRegister, registerCtrl);
router.post('/login', validateLogin, loginCtrl);

router.post('/forget-password', validateVerification, forgotPassword);
router.put(
  '/forget-password/:changePasswordCode',
  validatePassword,
  newPassword,
);

router.post('/validate', validateVerification, newValidation);
router.put('/validate-user', validateCode, validateUser);

module.exports = router;
