const mysql = require("mysql");
const credentials = require("./config.connection");

var connection = mysql.createConnection({
    host: credentials.HOST,
    user: credentials.USER,
    password: credentials.PASSWORD,
    multipleStatements: true,
    database: credentials.DB,
    connectionLimit: 10,
    queueLimit: 0,
    typeCast: function castField(field, useDefaultTypeCasting) {
        if ((field.type === "BIT") && (field.length === 1)) {
            var bytes = field.buffer();
            return (bytes[0] === 1);
        }
        return (useDefaultTypeCasting());
    }
});

const getConnection = () => {
    try {
    return connection;
        
    } catch (error) {
       return error 
    }
};

module.exports = getConnection