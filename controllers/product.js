const { productModel, catergoryModel, userModel } = require('../models');
const {
  handleHttpError,
  handleErrorResponse,
} = require('../utils/handleError');

const getItems = async (req, res) => {
  let { title, pageNumber, nPerPage, lat, lng, radio } = req.query;

  const sort = req.query.sort ? req.query.sort : '-createdAt';

  nPerPage = nPerPage ? nPerPage : 30;

  pageNumber = pageNumber ? pageNumber : 1;

  let data;

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
      {
        path: 'subCategory',
        select: { title: 1 },
      },
    ],
  };

  try {


    // si lat y lng son true, busco los productos por cercania, sino busco por titulo

    if (lat && lng) {

  

      // recibo el radio en metros, lo paso a kilometros y lo divido por el radio de la tierra en kilometros



      // 6378.1 es el radio de la tierra en kilometros

      radio = radio ? radio / 6378.1 : 0.1 / 6378.1;


      

      // busco los productos por cercania 

      //

      data = await productModel.paginate(
        {
          location: {
            $geoWithin: {
              $centerSphere: [[lng, lat], radio ? radio : 0.1 ]
            }
          }
        },
        options,
      );



    } else {
        
        // busco los productos por titulo

        console.log('busco por titulo')
  
         data = await productModel.paginate(
          { title: { $regex: new RegExp(title), $options: 'i' } },
          options,
        );
 

    }

    res.send({ data });
  } catch (e) {
    handleHttpError(res, e);
  }
};

const getItem = async (req, res) => {
  try {
    const { id } = req.params;
    const data = await productModel
      .findById(id)
      .populate('category')
      .populate('subCategory');
    res.send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_GET_ITEM');
  }
};

const createItem = async (req, res) => {
  try {
    const { body } = req;
    const checkIsExist = await productModel.findOne({ title: body.title });
    if (checkIsExist) {
      handleErrorResponse(res, 'PRODUCT_EXISTS', 401);
      return;
    }
    const data = await productModel.create(body);
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
    const data = await productModel.findByIdAndUpdate(id, body);
    res.send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_UPDATE_ITEMS');
  }
};

const deleteItem = async (req, res) => {
  try {
    const { id } = req.params;
    const deleteResponse = await productModel.findByIdAndRemove({ _id: id });
    const data = {
      deleted: deleteResponse.matchedCount,
    };

    res.send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_DELETE_ITEM');
  }
};

module.exports = {
  getItems,
  getItem,
  createItem,
  updateItem,
  deleteItem,
};
