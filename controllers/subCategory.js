const { subCategoryModel, productModel } = require('../models');


// requiero mooose para validar el id de mongo

const mongoose = require('mongoose');

const {
  handleHttpError,
  handleErrorResponse,
} = require('../utils/handleError');

const getItems = async (req, res) => {
  let { title, pageNumber, nPerPage, category } = req.query;

  

  // si category verifico sea un id de mongo

  if (category) {
    if (!mongoose.Types.ObjectId.isValid(category)) {
      return handleErrorResponse(res, 'INVALID_ID');
    }
  }



  const sort = req.query.sort ? req.query.sort : '-createdAt';

  nPerPage = nPerPage ? nPerPage : 30;

  pageNumber = pageNumber ? pageNumber : 1;



  const options = {
    page: pageNumber,
    sort: sort,
    limit: nPerPage,
    populate: [
      {
        path: 'category',
        select: { title: 1 },
        protect: { subCategory: 1 },
      },
    ],
    
  };
  try {

    // busco las subcategorias, si category es true, busco las subcategorias de una categoria en especifico sino busco todas las subcategorias

    const data = await subCategoryModel.paginate(
      { title: { $regex: new RegExp(title), $options: 'i' }, category: category ? category : { $exists: true } },

      options,
    );



    res.send({ data });
  } catch (e) {
    console.log(e);
    handleHttpError(res, 'ERROR_GET_ITEMS');
  }
};

const getItem = async (req, res) => {
  try {
    const { id  } = req.params;

    const { products } = req.query;

    let data = await subCategoryModel.findById(id).populate('category');


    // si no hay ninguna subcategoria con ese id returno 404 error

    if(!data){


      return res.status(404).send({ error: 'Subcategory not found' });


    }



    if (products) {
      

      const product = await productModel.find({ subCategory: id });


      // agrego los productos a la subcategoria , data es un const

      data = { ...data._doc, products: product };






    }



    res.send({ data });
  } catch (e) {
    console.log(e);
    handleHttpError(res, 'ERROR_GET_ITEM');
  }
};

const createItem = async (req, res) => {
  try {
    const body = req.body;
    const checkIsExist = await subCategoryModel.findOne({ title: body.title });
    if (checkIsExist) {
      handleErrorResponse(res, 'CATEGORY_EXISTS', 401);
      return;
    }
    const data = await subCategoryModel.create(body);
    res.status(201);
    res.send({ data });
  } catch (e) {
    
    handleHttpError(res, 'ERROR_CREATE_ITEMS');
  }
};

const updateItem = async (req, res) => {
  try {
    const { id } = req.params;
    const body = req.body;
    const data = await subCategoryModel.findByIdAndUpdate(id, body);
    res.send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_UPDATE_ITEMS');
  }
};

const deleteItem = async (req, res) => {
  try {
    const { id } = req.params;
    const deleteResponse = await subCategoryModel.findByIdAndRemove({
      _id: id,
    });
    const data = {
      deleted: deleteResponse.matchedCount,
    };

    res.send({ data });
  } catch (e) {
    console.log(e);
    handleHttpError(res, 'ERROR_DELETE_ITEM');
  }
};

module.exports = { getItems, getItem, createItem, updateItem, deleteItem };
