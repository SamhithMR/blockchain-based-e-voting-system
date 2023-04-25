var mysql = require('mysql');
var conn = mysql.createConnection({
  host: '127.0.0.1', // assign your host name
  user: 'root',      //  assign your database username
  password: '',      // assign your database password
  database: 'aadhar', // assign database Name
  port: 3306
}); 
conn.connect(function(err) {
  if (err) throw err;
  console.log('Database is connected successfully !');
});
module.exports = conn;