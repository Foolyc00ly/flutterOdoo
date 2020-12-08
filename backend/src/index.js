const app=require('./app');
const{connect}=require('./database');

const main=async()=>{
    //*Conexion a la base de datos
    await connect();
    //*Inicio de mi servido de Express
    await app.listen(4000);
    //*Despues del inicio visualice el mensaje
    console.log('Servidor iniciado en el puerto 4000');
}
main();