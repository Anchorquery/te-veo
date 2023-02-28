const { encrypt } = require('../utils/handleJwt');
const { userModel } = require('../models');
const { handleHttpError } = require('../utils/handleError');

const getItems = async (req, res) => {
  try {
    const data = await userModel.find().limit(30);

    res.send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_GET_ITEMS');
  }
};

const getItem = async (req, res) => {
  try {
    const { id } = req.params;
    const data = await userModel.findById(id);

    res.send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_GET_ITEM');
  }
};

const createItem = async (req, res) => {
  try {
    const { body } = req.body;
    const password = await encrypt(body.password);

    body.password = password;

    const data = await userModel.create(body);

    res.status(201).send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_CREATE_ITEMS');
  }
};

const updateItem = async (req, res) => {
  try {
    const { id } = req.params;
    const body = req.body;
    const password = await encrypt(body.password);

    body.password = password;

    let data = await userModel.findByIdAndUpdate(id, body);

    res.send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_UPDATE_ITEMS');
  }
};

const deleteItem = async (req, res) => {
  try {
    const { id } = req.params;
    const deleteResponse = await userModel.findByIdAndRemove({ _id: id });
    const data = {
      deleted: deleteResponse,
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
