const express = require('express');
const router = express.Router();
var cors = require('cors');

// import mysql connection
const mysqlConnecttion = require('./database');


router.get('/',cors(),(req, res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    res.send("This is a Node.js APIsever Status 200");
});


router.get('/api/allcourses',cors(),(req, res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    mysqlConnecttion.query('select * from cursos',(err,data,fields)=>{
        if(!err){ res.json(data)}else{ console.log(err);}
    });
});


router.post('/api/login',cors(),(req,res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    const { carnet_estudiante, password_estudiante }= req.body;
    const login = `call login(?,?)`
    mysqlConnecttion.query(login,[carnet_estudiante, password_estudiante],(error, data, fields)=>{
        if(!!error) console.log(error.message);
        else if(data[0] == 0){ 
            let error = "* Credenciales invalidas";
            res.send(error);
        }else{
            res.send(data[0]);
        }
    });  
});


router.get('/api/user/courses/:id',cors(),(req, res)=>{
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


router.post('/api/user/enviarasistencia',cors(),(req,res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    const {fecha_asistencia,cursoID,estudianteID} = req.body;
    const sendAssist = 'call sendAssist(?,?,?);';
    mysqlConnecttion.query(sendAssist,[fecha_asistencia,cursoID,estudianteID],(error, data, fields)=>{
            console.log(data)
        if(!error){ 
            res.json({message: 'Asistencia enviada'});
        }else{ 
            console.log(error);
        }
    });
});











// CATEGRATICO API




router.post('/api/logincc',cors(),(req,res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    const { email_catedratico, password_catedratico }= req.body;
    const login = `call loginCatedratico(?,?)`
    mysqlConnecttion.query(login,[email_catedratico, password_catedratico],(error, data, fields)=>{
        if(!!error) console.log(error.message);
        else if(data[0] == 0){ 
            let error = "* Credenciales invalidas";
            res.send(error);
        }else{
            res.send(data[0]);
        }
    });  
});



router.get('/api/cat/courses/:id',cors(),(req, res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    let {id} = req.params;
    const catCourses =`call catCourses(?);`;
    mysqlConnecttion.query(catCourses, [id],(error,data,flieds)=>{
        if(!!error) console.log(error.message);
        else if(data[0] == 0){ 
            let error = "Carnet Invalido";
            res.send(error);
        }
        else{
            res.send(data[0]);
        }
    });
});



router.post('/api/cat/seeassist',cors(),(req,res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    const { cursoID, fecha_asistencia }= req.body;
    const seeAssists = `call seeAssists(?,?)`
    mysqlConnecttion.query(seeAssists,[cursoID, fecha_asistencia],(error, data, fields)=>{
        if(!!error) console.log(error.message);
        else if(data[0] == 0){ 
            let error = "* Credenciales invalidas";
            res.send(error);
        }else{
            res.send(data[0]);
        }
    });  
});



router.post('/api/cat/viewassist',cors(),(req,res)=>{
    res.header('Access-Control-Allow-Origin', '*');
    const {cursoID }= req.body;
    const viewStudents = `call viewStudents(?)`
    mysqlConnecttion.query(viewStudents,[cursoID],(error, data, fields)=>{
        if(!!error) console.log(error.message);
        else if(data[0] == 0){ 
            let error = "* Credenciales invalidas";
            res.send(error);
        }else{
            res.send(data[0]);
        }
    });  
});







module.exports = router;