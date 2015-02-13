var express = require('express');
var http = require('http');
var bodyParser = require('body-parser');

var app = express(), http_port = 3008;


app.use(express.static(__dirname + '/public'));

app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(bodyParser.json());

app.listen(http_port);
console.log("Listening on " + http_port);