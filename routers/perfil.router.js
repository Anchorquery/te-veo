const Router = require("express");
const perfilController = require("../controllers/perfil.controller")
const secure = require("../controllers/session.controller")

const router = Router();

router.post("/ListProfiling", secure.verifyToken, perfilController.ListPerfil);
router.post("/InsertPerfil", perfilController.InsertPerfil);
router.post("/UpdatePerfil", secure.verifyToken, perfilController.UpdatePerfil);
router.post("/VerifyCode", perfilController.VerifyCode);
router.post("/RetryCode", perfilController.RetryCode);

module.exports = router;