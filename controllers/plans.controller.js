const jwt = require("jsonwebtoken")
const getConnection = require("../connection/db.connection");
const HttpError = require('../utils/errorHandler');

const ListPlans = async (req, res, next) => {
    const e = req.body;
    const token = req.token;

    try {
        const connection = await getConnection();
        connection.query('Call usp_planes_Select()', (err, result) => {
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
                res.status(HttpError.BAD_REQUEST).json({ message: "No hay planes registrados" });
            }

        });

    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};

const InsertPlans = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    
    const boddy=[
        e.name_plan,
        e.price_plan,
        e.discount_plan
    ]

    try {
        const connection = await getConnection();
        connection.query('Call usp_planes_Insertar(?)',[boddy], (err, result) => {
            if (err) {
                res.status(HttpError.BAD_REQUEST).json({ message: err })
                return;
            }
            res.status(HttpError.OK).json({ message: "La plan fue creado con éxito" });
        });

    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};

const UpdatePlans = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    
    const boddy=[
        e.id_plans,
        e.name_plan,
        e.price_plan,
        e.discount_plan
    ]

    try {
        const connection = await getConnection();
        connection.query('Call usp_planes_Update(?)',[boddy], (err, result) => {
            if (err) {
                res.status(HttpError.BAD_REQUEST).json({ message: err })
                return;
            }
            res.status(HttpError.OK).json({ message: "La plan fue actualizado con éxito" });
        });

    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};

const DeletePlans = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    
    const boddy=[
        e.id_plans
    ]

    try {
        const connection = await getConnection();
        connection.query('Call usp_planes_Delete(?)',[boddy], (err, result) => {
            if (err) {
                res.status(HttpError.BAD_REQUEST).json({ message: err })
                return;
            }
            res.status(HttpError.OK).json({ message: "La plan fue actualizado con éxito" });
        });

    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};

module.exports={
    ListPlans,
    InsertPlans,
    UpdatePlans,
    DeletePlans
}