require('dotenv').config();
const express = require('express');
const cors = require('cors');
const dbConnectNoSql = require('./config/mongo');
const app = express();

// //swagger
// const swagger = require('./swagger');
// const swaggerUI = require("swagger-ui-express")
// const swaggerJsDoc = require("swagger-jsdoc")

dbConnectNoSql();

var corsOptions = {
  origin: '*',
};

const port = process.env.PORT || 3000;
app.use(cors(corsOptions));
app.use(express.json());

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Credentials', 'true');
  res.header(
    'Access-Control-Allow-Headers',
    'Origin, X-Requested-With, Content-Type, Accept, Authorization',
  );
  res.header(
    'Access-Control-Allow-Headers',
    'Origin, X-Requested-With, Content-Type, Accept',
  );
  res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
  next();
});

// swagger('/swagger', app);

// const API_URL = "/api/v1"
// app.use(API_URL + "/yateveo-mobile-session", cors(), session)
// app.use(API_URL + "/yateveo-mobile-category", cors(), category)
// app.use(API_URL + "/yateveo-mobile-profiling", cors(), profiling)
// app.use(API_URL + "/yateveo-mobile-product", cors(), product)
// app.use(API_URL + "/yateveo-mobile-subcategory", cors(), subcategory)
// app.use(API_URL + "/yateveo-mobile-role", cors(), role)
// app.use(API_URL + "/yateveo-mobile-chat", cors(), chat)

app.use('/api/v1', require('./routes'));

// app.use(API_URL + '/', (req, res) => {
//   res.send('Api Rest yateveo');
// });

app.listen(port, () => console.log(`linsten port ${port}`));
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
