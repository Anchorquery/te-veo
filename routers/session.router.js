const Router = require("express");
const session = require("../controllers/session.controller")

const router = Router();

router.post("/login", session.login);
router.post("/ListUser", session.verifyToken, session.ListUser);
router.post("/InsertUser",  session.InsertUser);
router.post("/UpdateUser", session.verifyToken, session.UpdateUser);
router.post("/DeleteUser", session.verifyToken, session.DeleteUser);

module.exports = router;