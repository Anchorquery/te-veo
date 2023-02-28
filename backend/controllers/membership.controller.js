const jwt = require("jsonwebtoken")
const getConnection = require("../connection/db.connection");
const HttpError = require('../utils/errorHandler');

const ListMembership = async (req, res, next) => {
    const e = req.body;
    const token = req.token;

    try {
        const connection = await getConnection();
        connection.query('Call usp_membership_Select()', (err, result) => {
            if (err) {
                res.status(HttpError.BAD_REQUEST).json({ message: err })
                return;
            }
            if (result[0].length) {
                jwt.verify(token, 'secretkey', (error, authData) => {
                    if (error) {
                        res.status(HttpError.FORBIDEN).json({ message: error.message });
                    } else {
                        res.status(HttpError.OK).json(result[0]);
                    }
                });
            } else {
                res.status(HttpError.BAD_REQUEST).json({ message: "No hay membresías registradas" });
            }

        });

    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};

const InsertMembership = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const boddy = [
                    e.id_plans,
                    e.id_user,
                    e.id_product,
                    e.start_date,
                    e.day_end,
                ]

                const connection = await getConnection();
                connection.query('Call usp_membership_Insert(?)', [boddy], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "Creado con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};

const UpdateMembership = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const boddy = [
                    e.id_membership,
                    e.id_plans,
                    e.id_user,
                    e.id_product,
                    e.start_date,
                    e.day_end,
                ]

                const connection = await getConnection();
                connection.query('Call usp_membership_Update(?)', [boddy], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "Actualizado con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};

const DeleteMembership = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const boddy = [
                    e.id_membership,
                ]

                const connection = await getConnection();
                connection.query('Call usp_membership_Delete(?)', [boddy], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "Eliminado con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};


module.exports = {
    ListMembership,
    InsertMembership,
    UpdateMembership,
    DeleteMembership
}