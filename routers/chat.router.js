const Router = require("express");
const chatController =  require("../controllers/chat.controller")
const secure = require("../controllers/session.controller")

const router = Router();

router.post("/ListChat", secure.verifyToken,chatController.ListChat);
router.post("/ListPartChat", secure.verifyToken,chatController.ListPartChat);
router.post("/ListGroup", secure.verifyToken,chatController.ListGroup);
router.post("/InsertChat", secure.verifyToken,chatController.InsertChat);
router.post("/InsertPartChat", secure.verifyToken,chatController.InsertPartChat);
router.post("/InsertGroup", secure.verifyToken,chatController.InsertGroup);
router.post("/UpdateGroup", secure.verifyToken,chatController.UpdateGroup);
router.post("/UpdatePartChat", secure.verifyToken,chatController.UpdatePartChat);
router.post("/DeleteChat", secure.verifyToken,chatController.DeleteChat);
router.post("/DeleteGroup", secure.verifyToken,chatController.DeleteGroup);
router.post("/DeletePartChat", secure.verifyToken,chatController.DeletePartChat);


module.exports =  router;