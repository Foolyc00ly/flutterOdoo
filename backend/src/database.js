const mongoose=require('mongoose');
const connect=async()=>{
    await mongoose.connect('mongodb://localhost/flutter-node',{
        useNewUrlParser:true
    });
    console.log('Database : Conectado');
};
module.exports={connect};