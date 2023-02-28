const { Router } = require('express');
const { isAdmin } = require('../middleware/newAuth');
const router = Router();
const authMiddleware = require('../middleware/auth');
const {
  validateId,
  validateObjectDataCreate,
  validateObjectDataUpdate,
} = require('../validators/plan');
const {
  getItems,
  getItem,
  createItem,
  updateItem,
  deleteItem,
} = require('../controllers/plan');

router.get('/', getItems);
router.get('/:id', validateId, getItem);
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
