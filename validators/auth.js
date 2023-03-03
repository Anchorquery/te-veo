const { check } = require('express-validator');
const { validateResult } = require('../utils/handleValidator');

const validateLogin = [
  check('email').exists().notEmpty().isEmail(),
  check('password').exists().notEmpty(),
  (req, res, next) => {
    validateResult(req, res, next);
  },
];

const validateRegister = [
  check('name').exists().notEmpty(),
  check('surname').exists().notEmpty(),
  check('email').exists().notEmpty().isEmail(),
  check('password').exists().notEmpty().isLength({ min: 8, max: 15 }),
  (req, res, next) => {
    validateResult(req, res, next);
  },
];

const validateVerification = [
 
  check('email').exists().notEmpty().isEmail(),
  (req, res, next) => {
    console.log('hola')
    validateResult(req, res, next);
  },
];

const validateCode = [
  check('email').exists().notEmpty().isEmail(),
  check('validationCode').exists().notEmpty(),
  (req, res, next) => {
    validateResult(req, res, next);
  },
];

const validatePassword = [
  check('password').exists().notEmpty().isLength({ min: 8, max: 15 }),
  (req, res, next) => {
    validateResult(req, res, next);
  },
];

module.exports = {
  validateLogin,
  validateRegister,
  validateVerification,
  validateCode,
  validatePassword,
};
