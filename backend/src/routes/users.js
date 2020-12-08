const{Router}=require('express');
const router=Router();
const faker=require('faker');
const User=require('../models/User');
//*Creo las rutas
router.get('/api/users',async(req,res)=>{
    //*Desde user quiero que busques todos los datos que existen
    //*luego de consultar los datos quiero que los guardes en una const
    //*llamada users
    const users=await User.find();
    res.json({users});
    
});
router.get('/api/users/create',async(req,res)=>{
    //*Genera 5 datos de prueba en la base de datos
    for(let i=0;i<5;i++){
        await User.create({
            firstName:faker.name.firstName(),
            lastName:faker.name.lastName(),
            avatar:faker.image.avatar(),
        });
    }
    res.json({message:'5 Usuarios creados'});
});
module.exports=router;