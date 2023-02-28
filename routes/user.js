const { Router } = require('express');
const router = Router();
const { isAdmin } = require('../middleware/newAuth');
const authMiddleware = require('../middleware/auth');
const { validateId, validateUserRoleUpdate } = require('../validators/user');
const {
  getItems,
  getItem,
  updateItem,
  deleteItem,
  createItem,
} = require('../controllers/user');

router.post('/InsertPerfil', authMiddleware, isAdmin, createItem);
router.get('/ListProfiling', authMiddleware, isAdmin, getItems);
router.put('/UpdatePerfil/:id', authMiddleware, isAdmin, updateItem);

router.get('/:id', authMiddleware, isAdmin, validateId, getItem);
router.post('/', authMiddleware, isAdmin, validateId, createItem);
router.get('/', authMiddleware, isAdmin, getItems);
router.put('/:id', authMiddleware, isAdmin, validateUserRoleUpdate, updateItem);
router.delete('/:id', authMiddleware, isAdmin, validateId, deleteItem);

module.exports = router;
