const Router = require("express");
const secure = require("../controllers/session.controller")
const subcategoryController =  require("../controllers/subcategory.controller")

const router = Router();

router.post("/ListSubCategory", secure.verifyToken,subcategoryController.ListSubCategory);
router.post("/InsertSubCategory", secure.verifyToken,subcategoryController.InsertSubCategory);
router.post("/UpdateSubCategory", secure.verifyToken,subcategoryController.UpdateSubCategory);
router.post("/DeleteSubCategory", secure.verifyToken,subcategoryController.DeleteSubCategory);

module.exports =  router;