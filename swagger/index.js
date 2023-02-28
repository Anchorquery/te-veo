const swaggerJSDoc = require('swagger-jsdoc');
const swaggerUI = require('swagger-ui-express');
const path = require('path');


const swaggerDefinition = {
    openapi: '3.0.0',
    info: {
        title: 'Rest Api Yateveo',
        version: '1.0.0',
    },
    servers: [{
        url: "http://localhost:3000/"
    }]
};

const options = {
    swaggerDefinition,
    // Paths to files containing OpenAPI definitions
    apis: [path.join(__dirname,"./routers/*.js")],
};


const swaggerSpec = swaggerJSDoc(options);

module.exports = (route, server) => {
    return server.use(route, swaggerUI.serve, swaggerUI.setup(swaggerSpec));
};
