const Router = require("express");
const categoryController =  require("../controllers/category.controller")
const secure = require("../controllers/session.controller")

const router = Router();

router.post("/ListCategory",secure.verifyToken,categoryController.ListCategory);
router.post("/InsertCategory", secure.verifyToken,categoryController.InsertCategory);
router.post("/UpdateCategory", secure.verifyToken,categoryController.UpdateCategory);
router.post("/DeleteCategory", secure.verifyToken,categoryController.DeleteCategory);

module.exports =  router;