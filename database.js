const mysql = require('mysql');

const mysqlConnection = mysql.createConnection({

    // host: '127.0.0.1',
    // user: 'root',
    // password: '',
    // database : 'asistencias',
    // port: 3306
    

    host: 'baj9a82sgal6klndqli9-mysql.services.clever-cloud.com',
    user: 'uszh9oepnyl7wmyb',
    password: 'GMcPy0J2Dd3absyNMROi',
    database : 'baj9a82sgal6klndqli9',
    port: 3306   


});


mysqlConnection.connect(function(err){
    if(err){console.log(err); 
        return;}else{console.log('DataBase is Connected!')}
});



module.exports = mysqlConnection;





