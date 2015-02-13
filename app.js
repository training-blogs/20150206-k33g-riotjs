var express = require('express');
var http = require('http');
var bodyParser = require('body-parser');

var app = express(), http_port = 3008;

app.use(express.static(__dirname + '/public'));

app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(bodyParser.json());

/* on ajoute une mini base de données en mémoire */
var db = [
    {id: "001", firstName: "Bob", lastName: "Morane"},
    {id: "002", firstName: "John", lastName: "Doe"},
    {id: "003", firstName: "Jane", lastName: "Doe"}
];

/* envoyer la liste des humains au format json */
app.get("/humans", function (req, res) {
    res.send(db);
});

app.listen(http_port);
console.log("Listening on " + http_port);