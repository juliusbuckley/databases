var db = require('../db');

module.exports = {
  messages: {
    get: function (callback) {
      db.connection.query('select * from messages', function(err, rows, fields) {
        if (err) {
          console.error(err);
        }
        callback(rows); 
      });
    }, // a function which produces all the messages
    post: function (obj, callback) {
      db.connection.query(`insert into messages (message, username, roomname) value ("${obj.message}", "${obj.username}", "${obj.roomname}")`, function(err, data) {
        if (err) {
          console.error(err);
        }
        callback(); 
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (username, callback) {

    },
    post: function (username, callback) {
      db.connection.query(`insert into users (username) value ('${username}')`, function(err, data) {
        if (err) {
          console.error(err);
        }
        callback(); 
      });
    }
  }
};

