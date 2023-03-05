const { catergoryModel, subCategoryModel } = require('../models');

const {
  handleHttpError,
  handleErrorResponse,
} = require('../utils/handleError');

const getItems = async (req, res) => {
  let { title, pageNumber, nPerPage,populate } = req.query;


  const sort = req.query.sort ?  req.query.sort : '-createdAt';

  nPerPage = nPerPage ? nPerPage : 30;  
  
  pageNumber = pageNumber ? pageNumber : 1;

  // DECLARO LAS OPCIONES QUE LE PASARÉ AL MÉTODO PAGINATE DE MONGOOSE PAGINATE

  const options = {
    page:pageNumber,
    sort:sort,
    limit:nPerPage
  };

  try {
    const data = await catergoryModel
      .paginate({ title: { $regex: new RegExp(title), $options: 'i' } }, options)
     // .skip(pageNumber)
      //.limit(nPerPage)
     // .populate('subCategory');

    if (populate) {



      // busco todas las subcategorias que tengan el id de la categoria recorriendo

      // el array de categorias que me devuelve el método paginate

      for (let i = 0; i < data.docs.length; i++) {

        let cat = data.docs[i];

        // busco todas las subcategorias que tengan el id de la categoria

        const subCategories = await subCategoryModel.find({ category: cat._id });




        // agrego las subcategorias al objeto data

        data.docs[i] = { ...cat._doc, subCategories };

      }


    }

    res.send({ data });
  } catch (e) {
    console.log(e);
    handleHttpError(res, 'ERROR_GET_ITEMS');
  }
};

const getItem = async (req, res) => {
  try {
    const { id } = req.params;

    const { populate } = req.query;


    let data = await catergoryModel.findById(id);

    if (populate) {
      // busco todas las subcategorias que tengan el id de la categoria

      const subCategories = await subCategoryModel.find({ category: id });

      // agrego las subcategorias al objeto data

      data = { ...data._doc, subCategories };



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
    const checkIsExist = await catergoryModel.findOne({ title: body.title });
    if (checkIsExist) {
      handleErrorResponse(res, 'CATEGORY_EXISTS', 401);
      return;
    }
    const data = await catergoryModel.create(body);
    res.status(201);
    res.send({ data });
  } catch (e) {
    console.log(e);
    handleHttpError(res, 'ERROR_CREATE_ITEMS');
  }
};

const updateItem = async (req, res) => {
  try {
    const { id } = req.params;

    const body = req.body;


      

      const data = await catergoryModel.findByIdAndUpdate(id, body);

    res.send({ data });
  } catch (e) {
    handleHttpError(res, e);
  }
};

const deleteItem = async (req, res) => {
  try {
    const { id } = req.params;
    const deleteResponse = await catergoryModel.findByIdAndRemove({ _id: id });
    const data = {
      deleted: deleteResponse,
    };

    res.send({ data });
  } catch (e) {
    console.log(e);
    handleHttpError(res, 'ERROR_DELETE_ITEM');
  }
};

module.exports = { getItems, getItem, createItem, updateItem, deleteItem };
