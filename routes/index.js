const { Router } = require('express');
const authRouter = require('./auth');
const categoryRouter = require('./category');
const subCategoryRouter = require('./subCategory');
const productRouter = require('./product');
const userRouter = require('./user');
const serviceRouter = require('./service');
const planRouter = require('./plan');
const router = Router();

router.use('/auth', authRouter);
//borrar despues de actualizar
router.use('/yateveo-mobile-session', authRouter);

router.use('/categories', categoryRouter);
//borrar despues de actualizar
router.use('/yateveo-mobile-category', categoryRouter);

router.use('/subcategories', subCategoryRouter);
//borrar despues de actualizar
router.use('/yateveo-mobile-subcategory', subCategoryRouter);

router.use('/products', productRouter);
//borrar despues de actualizar
router.use('/yateveo-mobile-product', productRouter);

router.use('/users', userRouter);
//borrar despues de actualizar
router.use('/yateveo-mobile-profiling', userRouter);

router.use('/services', serviceRouter);

router.use('/plans', planRouter);

module.exports = router;
