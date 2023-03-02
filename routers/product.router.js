const Router = require("express");
const productController =  require("../controllers/product.controller")
const secure = require("../controllers/session.controller")

const router = Router();

router.post("/ListarProducto", secure.verifyToken,productController.ListarProducto);
router.post("/InsertProducto", secure.verifyToken,productController.InsertProducto);
router.post("/UpdateProducto", secure.verifyToken,productController.UpdateProducto);
router.post("/DeleteProducto", secure.verifyToken,productController.DeleteProducto);

module.exports =  router;