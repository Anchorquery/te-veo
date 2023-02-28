const jwt = require("jsonwebtoken")
const getConnection = require("../connection/db.connection");
const HttpError = require('../utils/errorHandler');
const nodemailer = require("nodemailer");

var transporter = nodemailer.createTransport({
    host: "smtp.gmail.com",
    port: 465,
    secure: false, // true for 465, false for other ports
    auth: {
        user: 'soporte.teveoapp@gmail.com', // generated ethereal user
        pass: 'xffuaffsqbjvgacq', // generated ethereal password
    },
});

const ListPerfil = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_perfil_select(?)', [authData.data.id_user], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    if (result[0].length) {
                        res.status(HttpError.OK).json(result[0][0]);
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

const EnviarCorreo = (email, mensaje) => {
    var mailOptions = {
        from: '"Te Veo" <soporte.teveoapp@gmail.com>',
        to: email,
        subject: 'Codigo de verificación',
        text: 'Code',
        html: mensaje
    }
    transporter.sendMail(mailOptions, (error, info) => {
        if (error) {
            console.log(error);
            return;
        }
        console.log('sended successfully');
    });
}
const InsertPerfil = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_user,
        e.document,
        e.first_name,
        e.last_name,
        e.email,
        e.phone
    ]
    try {
        const connection = await getConnection();
        connection.query('Call usp_perfil_Insert(?)', [data], (err, result) => {
            if (err) {
                res.status(HttpError.BAD_REQUEST).json({ message: err })
                return;
            }
            res.status(HttpError.OK).json(result[0][0]);
        });
        connection.query('SELECT * FROM user where id_user=?', [e.id_user], (err, result) => {
            if (err) {
                return;
            }
            if (result[0].status == 2) {
                EnviarCorreo(e.email, `<p>Codigo de verificacion: <b>${result[0].code}</b></p>`)
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const UpdatePerfil = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_user,
        e.document,
        e.first_name,
        e.last_name,
        e.email,
        e.phone
    ]
    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_perfil_Update(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "El perfil fue actualizado con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const VerifyCode = async (req, res, next) => {
    const e = req.body;
    const token = req.token;

    try {
        const connection = await getConnection();
        connection.query('SELECT * FROM user where id_user=?', [e.id_user], (err, result) => {
            if (err) {
                res.status(HttpError.BAD_REQUEST).json({ message: err })
                return;
            }
            if (result[0].status == 2) {
                if (result[0].code === e.code) {
                    connection.query('Call usp_verificar_Code(?)', [e.id_user], (err, result) => {
                    });

                    res.status(HttpError.OK).json({ message: "Codigo Verificado correctamente" });
                } else {
                    res.status(HttpError.OK).json({ message: "Codigo Incorrecto" });
                }
            } else {
                res.status(HttpError.OK).json({ message: "El codigo ya ha sido verificado" });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const RetryCode = async (req, res, next) => {
    const e = req.body;
    const token = req.token;

    const banco = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    let aleatoria = "";
    for (let i = 0; i < 4; i++) {
        aleatoria += banco.charAt(Math.floor(Math.random() * banco.length)).toUpperCase();
    }

    try {
        const connection = await getConnection();
        connection.query('SELECT u.*,p.email FROM user u inner join perfil p on u.id_user=p.id_user where u.id_user=?', [e.id_user], (err, result) => {
            if (err) {
                res.status(HttpError.BAD_REQUEST).json({ message: err })
                return;
            }
            if (result[0].status == 2) {
                connection.query('Call usp_retry_Code(?,?)', [e.id_user, aleatoria], (err, result) => {
                });
                EnviarCorreo(result[0].email, `<p>Codigo de verificacion: <b>${aleatoria}</b></p>`)
                res.status(HttpError.OK).json({ message: "Codigo Enviado Exitosamente" });
            } else {
                res.status(HttpError.OK).json({ message: "El codigo ya ha sido verificado" });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};

module.exports = {
    ListPerfil,
    InsertPerfil,
    UpdatePerfil,
    VerifyCode,
    RetryCode
};