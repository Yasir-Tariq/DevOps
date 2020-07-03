// //Load express module with `require` directive
// var express = require('express')
// var app = express()

// //Define request response in root URL (/)
// app.get('/', function (req, res) {
//   res.send('Hello EURUS TECHNOLOGIES, USING NODE VERSION 12 UPDATED AGAIIIIN!!!')
// })



// //Launch listening server on port 8080
// app.listen(8080, function () {
//   console.log('App listening on port 8080!')
// })


exports.handler = (event, context, callback) => {
  // TODO implement
  const response = {
      statusCode: 200,
      body: JSON.stringify('Updated lambda function!!!!!!!!!!!')
  };
  callback(null, response);
};







// exports.handler = (event, context, callback) => {
//   // TODO implement
//   const response = {
//       statusCode: 200,
//       body: JSON.stringify('Welcome to Eurus Technologies!')
//   };
//   callback(null, response);
// };