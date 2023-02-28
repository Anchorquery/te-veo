const { serviceModel, catergoryModel, userModel } = require('../models');
const {
  handleHttpError,
  handleErrorResponse,
} = require('../utils/handleError');

const getItembyName = async (req, res) => {
  const { title } = req.query;

  try {
    if (title) {
      let services = await serviceModel
        .find({
          title: { $regex: title, $options: 'i' },
        })
        .populate('category')
        .populate('subcategory')
        .limit(30);
      if (services.length) {
        res.json(services);
      } else {
        res.status(404).send('Plan not found');
      }
    } else {
      let services = await serviceModel
        .find()
        .populate('category')
        .populate('subcategory')
        .limit(30);

      if (services.length) {
        res.json(services);
      } else {
        res.status(404).send('Plan not found.');
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
    const data = await serviceModel
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
    const data = await serviceModel
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
    const checkIsExist = await serviceModel.findOne({ title: body.title });
    if (checkIsExist) {
      handleErrorResponse(res, 'Plan_EXISTS', 401);
      return;
    }
    const data = await serviceModel.create(body);
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
    const data = await serviceModel.findByIdAndUpdate(id, body);
    res.send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_UPDATE_ITEMS');
  }
};

const deleteItem = async (req, res) => {
  try {
    const { id } = req.params;
    const deleteResponse = await serviceModel.findByIdAndRemove({ _id: id });
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
