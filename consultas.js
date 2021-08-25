const express = require('express');
const router = express.Router();
var cors = require('cors');

// import mysql connection
const mysqlConnecttion = require('./database');


router.get('/',cors(),(req, res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    res.send("This is a Node.js APIsever Status 200");
});


router.get('/api/allcourses',(req, res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    mysqlConnecttion.query('select * from cursos',(err,data,fields)=>{
        if(!err){ res.json(data)}else{ console.log(err);}
    });
});




router.get('/api/login/:id',(req, res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    let {id} = req.params;
    const clientHistorial =`call getUser(?);`;

    mysqlConnecttion.query(clientHistorial, [id],(error,data,flieds)=>{
        if(!!error) console.log(error.message);
        else if(data[0] == 0){ 
                let error = "* Carnet Invalido";
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


router.get('/api/user/courses/:id',(req, res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    let {id} = req.params;
    const clientHistorial =`call getUserCourses(?);`;

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


router.put('/api/user/asistencias',(req,res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    const {nombre_estudiante,apellido_estudiante,carnet_estudiante,nombre_curso,fecha_asistencia} = req.body;
    const setAsistencia = 'insert into asistencia (nombre_estudiante, apellido_estudiante, carnet_estudiante, nombre_curso, fecha_asistencia) values(?,?,?,?,?)';
    mysqlConnecttion.query(setAsistencia,[nombre_estudiante,apellido_estudiante,carnet_estudiante,nombre_curso,fecha_asistencia],(error, data, fields)=>{
            console.log(data)
        if(!error){ 
            res.json({message: 'Asistencia enviada'});
        }else{ 
            console.log(error);
        }
    });
});








































module.exports = router;