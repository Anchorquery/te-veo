const { Router } = require('express');
const router = Router();
const authMiddleware = require('../middleware/auth');
const { isAdmin } = require('../middleware/newAuth');

const {
  validateId,
  validateObjectDataCreate,
  validateObjectDataUpdate,
} = require('../validators/subCategory');
const {
  getItems,
  getItem,
  createItem,
  updateItem,
  deleteItem,
} = require('../controllers/subCategory');

router.get('/ListSubCategory', getItems);
router.post(
  '/InsertSubCategory',
  authMiddleware,
  isAdmin,
  validateObjectDataCreate,
  createItem,
);
router.put(
  '/UpdateSubCategory/:id',
  authMiddleware,
  isAdmin,
  validateObjectDataUpdate,
  updateItem,
);
router.delete(
  '/DeleteSubCategory/:id',
  authMiddleware,
  isAdmin,
  validateId,
  deleteItem,
);

router.get('/:id', validateId, getItem);
router.get('/', getItems);
router.post('/', authMiddleware, isAdmin, validateObjectDataCreate, createItem);
router.put(
  '/:id',
  authMiddleware,
  isAdmin,
  validateObjectDataUpdate,
  updateItem,
);
router.delete('/:id', authMiddleware, isAdmin, validateId, deleteItem);

module.exports = router;
