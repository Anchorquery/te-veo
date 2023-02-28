const jwt = require("jsonwebtoken")
const getConnection = require("../connection/db.connection");
const HttpError = require('../utils/errorHandler');
var bcryptjs = require('bcryptjs');
const Cryptr = require('cryptr');
const cryptr = new Cryptr('mykey123Rttt21');

function verifyToken(req, res, next) {
    try {
        const ptoken = req.body.token || req.query.token || req.headers['x-access-token'];
        if (!ptoken) {
            throw Error('Invalid parameters');
        }
        req.token = ptoken;
        next();
    } catch (err) {
        console.log(err)
        res.status(HttpError.BAD_REQUEST).json({ message: "Token undefined" });
    }
}
async function insertToken(data) {
    try {
        const connection = await getConnection();
        connection.query('Call usp_session_Insert(?)', [data], (err, result) => {
        });
    } catch (err) {
        console.log(err)
    }
}

const login = async (req, res, next) => {
 
    const e = req.body

    // const encryptedString1 = cryptr.encrypt('La información está constituida por un grupo de datos ya supervisados y ordenados, que sirven para construir un mensaje basado en un cierto fenómeno o ente. La información permite resolver problemas y tomar decisiones, ya que su aprovechamiento racional es la base del conocimiento. Por lo tanto, otra perspectiva nos indica que la información es un recurso que otorga significado o sentido a la realidad, ya que mediante códigos y conjuntos de datos, da origen a los modelos de pensamiento humano.');
    // const encryptedString2 = cryptr.encrypt('Hola. Bien y Tú?');
    // console.log(encryptedString1)
    // console.log(encryptedString2)
    // const decryptedString = cryptr.decrypt(encryptedString);

    // const encryptedString =await bcryptjs.hash(e.pass,8);

    const data = [e.user]

    try {
        const connection = await getConnection();
        connection.query('Call usp_user_Login(?)', [data], async (err, result) => {
            if (err) {
                res.status(HttpError.BAD_REQUEST).json({ message: err })
                return;
            }
            if (result[0].length) {
                const encryptedcompare = await bcryptjs.compareSync(e.pass, result[0][0].pass);
                if (encryptedcompare) {
                    if (result[0][0].status === 1) {
                        jwt.sign({ data: result[0][0] }, 'secretkey', { expiresIn: '10h' }, (err, token) => {
                            const data2 = [result[0][0].id_user, token]
                            insertToken(data2)
                            res.status(HttpError.OK).json({
                                token
                            });
                        })
                    } else {
                        res.status(HttpError.BAD_REQUEST).json({ message: "El usuario ha sido suspendido por favor comunícate con el administrador" });
                    }
                } else {
                    res.status(HttpError.BAD_REQUEST).json({ message: "Usuario o contraseña no válidos por favor volver a intentar" });
                }
            } else {
                res.status(HttpError.BAD_REQUEST).json({ message: "Usuario o contraseña no válidos por favor volver a intentar" });
            }
        });

    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error })
    }
};
const ListUser = async (req, res, next) => {
    const e = req.body;
    const token = req.token;

    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_user_Select()', (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    if (result[0].length) {
                        res.status(HttpError.OK).json({ data: result[0] });
                    } else {
                        res.status(HttpError.BAD_REQUEST).json({ message: "No hay usuarios registrados" });
                    }
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};

const InsertUser = async (req, res, next) => {
    try {
        const e = req.body;
        if (!e.user == '' && !e.pass == '' && !e.type_user == '' && !e.status == '' && !e.create_at == '' && !e.update_at == '') {
            const pass = await bcryptjs.hash(e.pass, 8);
            const banco = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            let aleatoria = "";
            for (let i = 0; i < 4; i++) {
                aleatoria += banco.charAt(Math.floor(Math.random() * banco.length)).toUpperCase();
            }
            const data = [
                e.user,
                pass,
                e.type_user,
                2,
                e.create_at,
                e.update_at,
                aleatoria
            ]

            const connection = await getConnection();
            connection.query('Call usp_user_Insert(?)', [data], (err, result) => {
                if (err) {
                    res.status(HttpError.BAD_REQUEST).json({ message: err.sqlMessage })
                    return;
                }
                res.status(HttpError.OK).json(result[0][0]);
            });

        } else {
            res.status(HttpError.BAD_REQUEST).json({ message: "Complete todos los campos requeridos" });
        }
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }

};
const UpdateUser = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_user,
        e.user,
        e.pass,
        e.type_user,
        e.status,
        e.create_at,
        e.update_at,
    ]
    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_user_Update(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "El usuario fue actualizado con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const DeleteUser = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_user,
    ]
    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                connection.query('Call usp_user_Delete(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: "El usuario fue eliminado con éxito" });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};

module.exports = {
    verifyToken,
    login,
    ListUser,
    InsertUser,
    UpdateUser,
    DeleteUser
};