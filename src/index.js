var http = require('http');
var fs = require('fs');

http.createServer(function (req, res) {
  //res.writeHead(200, {'Content-Type': 'text/html'});
  res.end(`<h1 style="color:${process.env.MSG_COLOR}">${process.env.MESSAGE}</h1>`);
  res.end('<h1>Hi There!</h1>');
}).listen(8080);

