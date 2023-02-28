const jwt = require("jsonwebtoken")
const getConnection = require("../connection/db.connection");
const HttpError = require('../utils/errorHandler');

const ListRole = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_role_Select()', (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    if (result[0].length) {
                        res.status(HttpError.OK).json(result[0]);
                    } else {
                        res.status(HttpError.BAD_REQUEST).json({ message: "No hay roles registrados" });
                    }

                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const InsertRole = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.name,
        e.create_at,
        e.update_at,
        e.status
    ]
    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_role_Insert(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "El rol fue creado con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const UpdateRole = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_role,
        e.name,
        e.create_at,
        e.update_at,
        e.status
    ]
    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_role_Update(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "El rol fue creado con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const DeleteRole = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_role
    ]
    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_role_Delete(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "El rol fue creado con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};

module.exports = {
    ListRole,
    InsertRole,
    UpdateRole,
    DeleteRole,
};