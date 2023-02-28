const jwt = require("jsonwebtoken")
const getConnection = require("../connection/db.connection");
const HttpError = require('../utils/errorHandler');


const ListarProducto = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_products_Select_All(?,?)', [e.id_category,e.id_subcategory], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    if (result[0].length) {
                        res.status(HttpError.OK).json(result[0]);
                    } else {
                        res.status(HttpError.BAD_REQUEST).json({ message: "No hay existen datos del usuario" });
                    }

                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const InsertProducto = async (req, res, next) => {
    const e = req.body;
    const token = req.token;

    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            const data = [
                authData.data.id_user,
                e.id_subcategory,
                e.title,
                e.description,
                e.quantity,
                e.price,
                e.state,
                e.x_latitude,
                e.y_latitude,
                e.photos_file
            ]
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_products_Insert(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({message:"Producto Registrado con exito"});
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const UpdateProducto = async (req, res, next) => {
    const e = req.body;
    const token = req.token;

    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            const data = [
                e.id_product,
                authData.data.id_user,
                e.id_subcategory,
                e.title,
                e.description,
                e.photos_file,
                e.quantity,
                e.price,
                e.state,
                e.x_latitude,
                e.y_latitude,
                e.status
            ]
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_products_Update(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({message:"Producto Actualizado con exito"});
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const DeleteProducto = async (req, res, next) => {
    const e = req.body;
    const token = req.token;

    try {
        jwt.verify(token, 'secretkey', async(error, authData) => {
            const data = [
                e.id_product
            ]
            console.log(data);  
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_products_Delete(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({message:"Producto Actualizado con exito"});
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};


module.exports = {
    ListarProducto,
    InsertProducto,
    UpdateProducto,
    DeleteProducto
};