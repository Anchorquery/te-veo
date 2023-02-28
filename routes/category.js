const { Router } = require('express');
const router = Router();
const authMiddleware = require('../middleware/auth');
const { isAdmin } = require('../middleware/newAuth');

const {
  validateId,
  validateObjectDataCreate,
  validateObjectDataUpdate,
} = require('../validators/category');
const {
  getItems,
  getItem,
  createItem,
  updateItem,
  deleteItem,
} = require('../controllers/category');

//borrar despues
router.get('/ListCategory', getItems);
router.post(
  '/InsertCategory',
  authMiddleware,
  isAdmin,
  validateObjectDataCreate,
  createItem,
);
router.put(
  '/UpdateCategory/:id',
  authMiddleware,
  isAdmin,
  validateObjectDataUpdate,
  updateItem,
);
router.delete(
  '/DeleteCategory/:id',
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
