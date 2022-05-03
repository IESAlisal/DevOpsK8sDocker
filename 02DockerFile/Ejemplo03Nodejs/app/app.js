var express = require('express');
var expressHandlebars = require('express-handlebars');
var http = require('http');

var PORT = 8000;

var LINES = [
    "Este es un sitio web programado con Node.js",
    "Creado a partir de una imagen de Docker basada en el archivo Dockerfile",
    "A partir del docker-compose.yml creo la aplicación con su código fuente",
    "7Crea directamente la aplicación en eld puerto 8000 que está en el docker-compose",
];

var lineIndex = 0;

var app = express();
app.engine('html', expressHandlebars());
app.set('view engine', 'html');
app.set('views', __dirname);
app.get('/', function(req, res) {
    var message = LINES[lineIndex];

    lineIndex += 1;
    if (lineIndex >= LINES.length) {
        lineIndex = 0;
    }

    res.render('index', {message: message});
});

http.Server(app).listen(PORT, function() {
    console.log("HTTP server listening on port %s", PORT);
});