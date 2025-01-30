// Get the client
const mysql = require('mysql2/promise');
const dotenv=require('dotenv');
dotenv.config();
// Create the connection to database
const mysqlpool = mysql.createPool({
  user:process.env.MYSQL_USER,
  host:process.env.MYSQL_HOST,
  password:process.env.MYSQL_PASSWORD,
  database:process.env.MYSQL_DATABASE
});


module.exports= mysqlpool;
