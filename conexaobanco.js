//Chamando a biblioteca mysql
var mysql = require("mysql");
 
//Criação de um pool de conexões
var pool = mysql.createPool({
    connectionLimit: 10, //Número máximo de conexões no pool
    host: "localhost",
    user: "root",
    password: "",
    database: "escola"
});
 
//Verificando a conexão com o banco
pool.getConnection(function(err, connection){
if(err){
    console.error("Erro de conexão: " + err.stack);
    return;
}
console.log("Conectado como ID " + connection.threadId);
//Após a conexão ser estabelecida, sempre liberar a conexão de volta ao pool
connection.release();
});
 
 
//exportando módulo
module.exports = pool;

