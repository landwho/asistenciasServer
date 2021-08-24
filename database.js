const mysql = require('mysql');

const mysqlConnection = mysql.createConnection({

    host: '127.0.0.1',
    user: 'root',
    password: '',
    database : 'asistencias',
    port: 3306
    

 
    // host: 'db4free.net',
    // user: 'landwho',
    // password: 'diosjubico25',
    // database : 'presta',
    // port: 3306   

});


mysqlConnection.connect(function(err){
    if(err){console.log(err); 
        return;}else{console.log('DataBase is Connected!')}
});





module.exports = mysqlConnection;