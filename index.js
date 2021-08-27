const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const bodyParser = require('body-parser')
const router = express.Router();


const app = express();
app.use(morgan('dev'));

//global variables



app.all('*', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    next();
 });



app.use((req, response, next)=>{
    response.header('Access-Control-Allow-Origin', '*');
    response.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, content-type, Content-Type, Accept');
    response.header('Access-Control-Allow-Methods', 'GET','PUT','DELETE');
    next();
});



//Routes


const serverPort = 33466;
console.log(serverPort);
app.set('port', process.env.PORT || serverPort);


// Middlewares
app.use(bodyParser.urlencoded({ extended: false }))
// parse application/json
app.use(bodyParser.json())
app.use(require('./consultas'));
app.use(cors());
app.use(cors({ origin: 'https://app-asistencia.herokuapp.com/' , credentials :  true,  methods: 'GET,PUT,POST,OPTIONS', allowedHeaders: 'Content-Type,Authorization' }));

app.use(express.json());



app.listen(app.get('port'), ()=>{ console.log('Server on Port',app.get('port'))});