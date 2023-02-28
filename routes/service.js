const { Router } = require('express');
const { isAdmin } = require('../middleware/newAuth');
const router = Router();
const authMiddleware = require('../middleware/auth');
const {
  validateId,
  validateObjectDataCreate,
  validateObjectDataUpdate,
} = require('../validators/service');
const {
  getItembyName,
  getItems,
  getItem,
  createItem,
  updateItem,
  deleteItem,
} = require('../controllers/service');

router.get('/', getItems);
router.get('/name', getItembyName);
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
