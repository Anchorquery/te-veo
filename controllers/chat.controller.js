const jwt = require("jsonwebtoken")
const getConnection = require("../connection/db.connection");
const HttpError = require('../utils/errorHandler');
const Cryptr = require('cryptr');
const cryptr = new Cryptr('mykey123Rttt21');

const ListChat = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_groups
    ]

    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                console.log(authData.data)
                connection.query('Call usp_chat_select(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    if (result[0].length) {
                        let data = result[0].map((row, i) => ({
                            id_chat: row.id_chat,
                            id_groups: row.id_groups,
                            id_user: row.id_user,
                            message: row.status ? cryptr.decrypt(row.message) : 'El mensaje ha sido eliminado',
                            status: row.status
                        }))
                        res.status(HttpError.OK).json(data);
                    } else {
                        res.status(HttpError.BAD_REQUEST).json({ message: "No hay chat registrado" });
                    }

                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const InsertChat = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_groups,
        e.id_user,
        cryptr.encrypt( e.message)
    ]

    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                console.log(authData.data)
                connection.query('Call usp_chat_Insert(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: 'success' });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const DeleteChat = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_chat
    ]

    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                console.log(authData.data)
                connection.query('Call usp_chat_Delete(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: 'success' });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const ListGroup = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_user
    ]

    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                console.log(authData.data)
                connection.query('Call usp_groups_list_by_user(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    if (result[0].length) {
                        res.status(HttpError.OK).json(result[0]);
                    } else {
                        res.status(HttpError.BAD_REQUEST).json({ message: "No hay Grupos registrado" });
                    }

                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const InsertGroup = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.name,
        e.id_produc,
    ]

    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                console.log(authData.data)
                connection.query('Call usp_groups_Insert(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: 'success' });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const UpdateGroup = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_groups,
        e.name,
        e.id_produc,
        e.state
    ]

    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                console.log(authData.data)
                connection.query('Call usp_groups_Update(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: 'success' });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const DeleteGroup = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_groups
    ]

    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                console.log(authData.data)
                connection.query('Call usp_groups_Delete(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: 'success' });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const ListPartChat = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_groups
    ]

    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                console.log(authData.data)
                connection.query('Call usp_chat_participants_Select_by_idGroup(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    if (result[0].length) {
                        res.status(HttpError.OK).json(result[0]);
                    } else {
                        res.status(HttpError.BAD_REQUEST).json({ message: "No hay Grupos registrado" });
                    }

                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const InsertPartChat = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_user,
        e.id_groups,
        e.id_type
    ]

    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                console.log(authData.data)
                connection.query('Call usp_chat_participants_Insert(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: 'success' });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const UpdatePartChat = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_chatparticipants,
        e.id_user,
        e.id_groups,
        e.id_type
    ]

    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                console.log(authData.data)
                connection.query('Call usp_chat_participants_Update(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: 'success' });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};
const DeletePartChat = async (req, res, next) => {
    const e = req.body;
    const token = req.token;
    const data = [
        e.id_chatparticipants
    ]

    try {
        jwt.verify(token, 'secretkey', async (error, authData) => {
            if (error) {
                res.status(HttpError.FORBIDEN).json({ message: error.message });
            } else {
                const connection = await getConnection();
                console.log(authData.data)
                connection.query('Call usp_chat_participants_Delete(?)', [data], (err, result) => {
                    if (err) {
                        res.status(HttpError.BAD_REQUEST).json({ message: err })
                        return;
                    }
                    res.status(HttpError.OK).json({ message: 'success' });
                });
            }
        });
    } catch (error) {
        res.status(HttpError.BAD_REQUEST).json({ message: error });
    }
};





module.exports = {
    ListChat,
    InsertChat,
    DeleteChat,
    ListGroup,
    InsertGroup,
    UpdateGroup,
    DeleteGroup,
    ListPartChat,
    InsertPartChat,
    UpdatePartChat,
    DeletePartChat
};