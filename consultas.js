const express = require('express');
const router = express.Router();
var cors = require('cors');

// import mysql connection
const mysqlConnecttion = require('./database');


router.get('/',cors(),(req, res)=>{
    res.send("This is a Node.js APIsever Status 200");
});


router.get('/api/allcourses',(req, res)=>{
    mysqlConnecttion.query('select * from cursos',(err,data,fields)=>{
        if(!err){ res.json(data)}else{ console.log(err);}
    });
});




router.get('/api/login/:id',(req, res)=>{

    let {id} = req.params;
    const clientHistorial =`call getUser(?);`;

    mysqlConnecttion.query(clientHistorial, [id],(error,data,flieds)=>{
        if(!!error) console.log(error.message);
        else if(data[0] == 0){ 
                let error = "Carnet Invalido";
                res.send(error);
            }
            else if(data[0].solvencia_estudiante == "NO"){
                let solvencia = "Estudiante no solvente";
                res.send(solvencia);
            }
            else{
                res.send(data[0]);
            }
    });
});















































module.exports = router;