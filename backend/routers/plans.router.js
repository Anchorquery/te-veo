const Router = require("express");
const plansController =  require("../controllers/plans.controller")
const secure = require("../controllers/session.controller")

const router = Router();

router.post("/ListPlans", secure.verifyToken,plansController.ListPlans);
router.post("/InsertPlans", secure.verifyToken,plansController.InsertPlans);
router.post("/UpdatePlans", secure.verifyToken,plansController.UpdatePlans);
router.post("/DeletePlans", secure.verifyToken,plansController.DeletePlans);

module.exports =  router;
