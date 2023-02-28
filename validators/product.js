const { check } = require('express-validator');
const { validateResult } = require('../utils/handleValidator');
const validateObjectDataCreate = [
  check('title').exists().notEmpty(),
  check('description').exists().notEmpty(),
  check('price').exists().notEmpty(),
  check('quantity').exists().notEmpty(),
  check('category').exists().notEmpty(),
  check('subcategory').exists().notEmpty(),
  check('x_latitude').exists().notEmpty(),
  check('y_latitude').exists().notEmpty(),
  (req, res, next) => {
    validateResult(req, res, next);
  },
];

const validateObjectDataUpdate = [
  check('title').exists().notEmpty(),
  check('description').exists().notEmpty(),
  check('price').exists().notEmpty(),
  check('quantity').exists().notEmpty(),
  check('category').exists().notEmpty(),
  check('subcategory').exists().notEmpty(),
  (req, res, next) => {
    validateResult(req, res, next);
  },
];

const validateId = [
  check('id').exists().isMongoId(),
  (req, res, next) => {
    validateResult(req, res, next);
  },
];

module.exports = {
  validateId,
  validateObjectDataCreate,
  validateObjectDataUpdate,
};
