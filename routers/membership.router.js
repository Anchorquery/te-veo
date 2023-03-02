const Router = require("express");
const membershipController =  require("../controllers/membership.controller")
const secure = require("../controllers/session.controller")

const router = Router();

router.post("/ListMembership", secure.verifyToken,membershipController.ListMembership);
router.post("/InsertMembership", secure.verifyToken,membershipController.InsertMembership);
router.post("/UpdateMembership", secure.verifyToken,membershipController.UpdateMembership);
router.post("/DeleteMembership", secure.verifyToken,membershipController.DeleteMembership);

module.exports =  router;
