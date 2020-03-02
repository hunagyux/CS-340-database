var mysql = require('mysql');
var pool = mysql.createPool({
  connectionLimit : 10,
  host            : 'classmysql.engr.oregonstate.edu',
  user            : 'cs340_huangyux',
  password        : '9258',
  database        : 'cs340_huangyux'
});

module.exports.pool = pool;
