const { productModel, catergoryModel, userModel } = require('../models');
const {
  handleHttpError,
  handleErrorResponse,
} = require('../utils/handleError');

const getItembyName = async (req, res) => {
  const { title } = req.query;

  try {
    if (title) {
      let products = await productModel
        .find({
          title: { $regex: title, $options: 'i' },
        })
        .populate('category')
        .populate('subcategory')
        .limit(30);
      if (products.length) {
        res.json(products);
      } else {
        res.status(404).send('Product not found');
      }
    } else {
      let products = await productModel
        .find()
        .populate('category')
        .populate('subcategory')
        .limit(30);

      if (products.length) {
        res.json(products);
      } else {
        res.status(404).send('Product not found.');
      }
    }
  } catch (err) {
    handleHttpError(res, 'ERROR_GET_ITEM_BY_NAME');
  }
};

const getItems = async (req, res) => {
  const { title, pageNumber, nPerPage } = req.query;
  nPerPage ? nPerPage : 30;
  pageNumber ? pageNumber : 0;

  try {
    const data = await productModel
      .find({
        title: { $regex: new RegExp(title), $options: 'i' },
      })
      .skip(pageNumber)
      .limit(nPerPage)
      .populate('category')
      .populate('subcategory');
    res.send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_GET_ITEMS');
  }
};

const getItem = async (req, res) => {
  try {
    const { id } = req.params;
    const data = await productModel
      .findById(id)
      .populate('category')
      .populate('subcategory');
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
  getItembyName,
  createItem,
  updateItem,
  deleteItem,
};
