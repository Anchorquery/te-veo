const { planModel } = require('../models');
const {
  handleHttpError,
  handleErrorResponse,
} = require('../utils/handleError');

const getItembyName = async (req, res) => {
  let { name, pageNumber, nPerPage } = req.query;

  const sort = req.query.sort ? req.query.sort : '-createdAt';

  nPerPage = nPerPage ? nPerPage : 30;

  pageNumber = pageNumber ? pageNumber : 1;

  const options = {
    page: pageNumber,
    sort: sort,
    limit: nPerPage,
  };

  try {
    if (name) {
      let plans = await planModel.paginate(
        { name: { $regex: new RegExp(name), $options: 'i' } },
        options,
      );
      if (plans.length) {
        res.json(plans);
      } else {
        res.status(404).send('Plan not found');
      }
    } else {
      let plans = await planModel
        .find()
        .populate('category')
        .populate('subcategory')
        .limit(30);

      if (plans.length) {
        res.json(plans);
      } else {
        res.status(404).send('Plan not found.');
      }
    }
  } catch (err) {
    handleHttpError(res, 'ERROR_GET_ITEM_BY_NAME');
  }
};

const getItems = async (req, res) => {
  const { name, pageNumber, nPerPage } = req.query;
  nPerPage ? nPerPage : 30;
  pageNumber ? pageNumber : 0;

  try {
    const data = await planModel
      .find({
        name: { $regex: new RegExp(name), $options: 'i' },
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
    const data = await planModel
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
    const checkIsExist = await planModel.findOne({ title: body.title });
    if (checkIsExist) {
      handleErrorResponse(res, 'Plan_EXISTS', 401);
      return;
    }
    const data = await planModel.create(body);
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
    const data = await planModel.findByIdAndUpdate(id, body);
    res.send({ data });
  } catch (e) {
    handleHttpError(res, 'ERROR_UPDATE_ITEMS');
  }
};

const deleteItem = async (req, res) => {
  try {
    const { id } = req.params;
    const deleteResponse = await planModel.findByIdAndRemove({ _id: id });
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
