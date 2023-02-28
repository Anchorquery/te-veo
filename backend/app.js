const express = require("express")
const cors = require('cors')
const app = express();

//swagger
const listEndpoints = require('express-list-endpoints')
const swagger = require('./swagger');
const swaggerUI = require("swagger-ui-express")
const swaggerJsDoc = require("swagger-jsdoc")


const session = require("./routers/session.router")
const profiling = require("./routers/perfil.router")
const product = require("./routers/product.router")
const role = require("./routers/role.router")
const category = require("./routers/category.router")
const subcategory = require("./routers/subcategory.router")
const chat = require("./routers/chat.router")


var corsOptions = {
    origin: "*"
};

app.use(cors(corsOptions));
app.use(express.json());
app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Authorization, X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Allow-Request-Method');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
    res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE');
    next();
});
swagger('/swagger', app);

const API_URL = "/api/v1"
app.use(API_URL + "/yateveo-mobile-session", cors(), session)
app.use(API_URL + "/yateveo-mobile-category", cors(), category)
app.use(API_URL + "/yateveo-mobile-profiling", cors(), profiling)
app.use(API_URL + "/yateveo-mobile-product", cors(), product)
app.use(API_URL + "/yateveo-mobile-subcategory", cors(), subcategory)
app.use(API_URL + "/yateveo-mobile-role", cors(), role)
app.use(API_URL + "/yateveo-mobile-chat", cors(), chat)



app.use(API_URL + '/', (req, res) => {

    // responder con un json con la request


    res.json({
        "message": "Welcome to Yateveo Mobile API",
        "version": "1.0.0",
        "request": req.body
    })
    
})    
app.listen(3000, function () {
    console.log("Api running port 3000")
})
console.log(listEndpoints(app));
//CALL usp_products_Select_All()
//CALL usp_products_Insert(1,2,'Gaseosas','Gaseosas de todo tipo por mayor y menor',1,5.50,1,0,0,'[1]')
//CALL usp_products_Update(5,1,2,'Gaseosa','Venta por mayor','[1,2,3,4,5]',99,1.50,1,-54.99,-25.99,1);
//CALL usp_products_Delete(5);

// CALL usp_groups_list_by_user(7);
// CALL usp_groups_Insert('Venta Producto 3',5);
// CALL usp_groups_Update(3,'Venta de Producto 3',5,1);
// CALL usp_groups_Delete(3);



// CALL usp_chat_participants_Select_by_idGroup(1);
// CALL usp_chat_participants_Insert(21,1,0);
// CALL usp_chat_participants_Update(7,21,1,1);
// CALL usp_chat_participants_Delete(7);

// CALL usp_chat_select(1);
// CALL usp_chat_Insert(1,7,'b20c05dcdcf896c8f3766ad282a19c08a38ef90f4620de435898821ad11014be1ee57f04a200d362033f3d91f9ebbb3107d40fc22512d58e420b1500a1b3b6cbd6e8e6e083425ef4b4c58c449cb6651251e8ec80dd4df911512fea07af518141d98c118dc57b73ad8f0288bf77c2c78f3c')
// CALL usp_chat_Delete(1);
