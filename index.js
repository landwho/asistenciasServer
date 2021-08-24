const express = require('express');
const morgan = require('morgan');
var cors = require('cors');
const router = express.Router();


const app = express();
app.use(morgan('dev'));

//global variables



app.all('*', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    next();
 });


//Routes

// const serverPort = 3000;
const serverPort = 33466;
console.log(serverPort);
app.set('port', process.env.PORT || serverPort);


// Middlewares
app.use(cors());
app.use(express.json());


app.use(require('./consultas'));




app.listen(app.get('port'), ()=>{ console.log('Server on Port',app.get('port'))});