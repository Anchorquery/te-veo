const jwt = require("jsonwebtoken")
const getConnection = require("../connection/db.connection");
const HttpError = require('../utils/errorHandler');


const ListCategory = async (req, res, next) => {
    const e = req.body;
    const token = req.token;

    try {
        const connection = await getConnection();
        connection.query('Call usp_category_products_Select_All()', (err, result) => {
            if (err) {
                res.status(HttpError.BAD_REQUEST).json({ message: err })
                return;
            }
            if (result[0].length) {
                jwt.verify(token, 'secretkey', (error, authData) => {
                    if (error) {
                        res.status(HttpError.FORBIDEN).json({ message: error.message });
                    } else {
                        const jsonResponse = {
                            data: result[0]
                        }
                        res.status(HttpError.OK).json(jsonResponse);
                    }
                });
            } else {
                res.status(HttpError.BAD_REQUEST).json({ message: "No hay categorias registradas" });
            }

        });

    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const InsertCategory = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
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
                connection.query('Call usp_category_products_Insert(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "La categoria fue creada con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const UpdateCategory = async (req, res, next) => {
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
                connection.query('Call usp_category_products_Update(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "La categoria fue actualizada con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const DeleteCategory = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_category,
    ]
    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_category_products_Delete(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "La categoria fue eliminada con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};


module.exports = {
    ListCategory,
    InsertCategory,
    UpdateCategory,
    DeleteCategory
};