const jwt = require("jsonwebtoken")
const getConnection = require("../connection/db.connection");
const HttpError = require('../utils/errorHandler');

const ListSubCategory = async (req, res, next) => {
    const e = req.body;
    const token = req.token;

    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_sub_category_products_Select_All()', (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    if (result[0].length) {
                        res.status(HttpError.OK).json({ data: result[0] });
                    } else {
                        res.status(HttpError.BAD_REQUEST).json({ message: "No hay subcategorias registradas" });
                    }
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const InsertSubCategory = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_category,
        e.title,
        e.description,
        e.status,
        e.create_at,
        e.update_at,
    ]
    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_sub_category_products_Insert(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "La subcategoria fue creada con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const UpdateSubCategory = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_subcategory,
        e.id_category,
        e.title,
        e.description,
        e.status,
        e.create_at,
        e.update_at,
    ]
    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_sub_category_products_Update(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "La subcategoria fue creada con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const DeleteSubCategory = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_subcategory,
    ]
    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_sub_category_products_Delete(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "La subcategoria fue creada con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};


module.exports = {
    ListSubCategory,
    InsertSubCategory,
    UpdateSubCategory,
    DeleteSubCategory,
};