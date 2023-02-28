const { subCatergoryModel } = require('../models');
const {
  handleHttpError,
  handleErrorResponse,
} = require('../utils/handleError');

const getItems = async (req, res) => {
  const { title, pageNumber, nPerPage } = req.query;
  nPerPage ? nPerPage : 30;
  pageNumber ? pageNumber : 0;
  try {
    const data = await subCatergoryModel
      .find({
        title: { $regex: new RegExp(title), $options: 'i' },
      })
      .skip(pageNumber)
      .limit(nPerPage);
    res.send({ data });
  } catch (e) {
    console.log(e);
    handleHttpError(res, 'ERROR_GET_ITEMS');
  }
};

const getItem = async (req, res) => {
  try {
    const { id } = req.params;
    const data = await subCatergoryModel.findById(id);
    res.send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_GET_ITEM');
  }
};

const createItem = async (req, res) => {
  try {
    const body = req.body;
    const checkIsExist = await subCatergoryModel.findOne({ title: body.title });
    if (checkIsExist) {
      handleErrorResponse(res, 'CATEGORY_EXISTS', 401);
      return;
    }
    const data = await subCatergoryModel.create(body);
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
    const data = await subCatergoryModel.findByIdAndUpdate(id, body);
    res.send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_UPDATE_ITEMS');
  }
};

const deleteItem = async (req, res) => {
  try {
    const { id } = req.params;
    const deleteResponse = await subCatergoryModel.findByIdAndRemove({
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
