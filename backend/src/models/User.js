const{Schema,model}=require('mongoose');
//*Datos que se guardaran en la base de datos
const userSchema=new Schema({
    firstName:String,
    lastName:String,
    avatar:String
});
//*Devuelve un modelo por el cual se puede interactuar con los datos
module.exports=model('User',userSchema);
