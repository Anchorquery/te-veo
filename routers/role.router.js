const Router = require("express");
const roleController =  require("../controllers/role.controller")
const secure = require("../controllers/session.controller")

const router = Router();

router.post("/ListRole", secure.verifyToken,roleController.ListRole);
router.post("/InsertRole", secure.verifyToken,roleController.InsertRole);
router.post("/UpdateRole", secure.verifyToken,roleController.UpdateRole);
router.post("/DeleteRole", secure.verifyToken,roleController.DeleteRole);

module.exports =  router;