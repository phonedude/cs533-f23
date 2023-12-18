const express = require('express');
const cookieParser = require('cookie-parser');

const app = express();
const port = 4000;

app.use(cookieParser());

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

app.get('/djshadow', (req, res) => {
  res.send('<h1>DJ Shadow</h1><p>DJ Shadow is one of my favorite musicians because of his incredible beats.</p>');
});

app.get('/game-of-thrones', (req, res) => {
  res.sendFile(__dirname + '/game-of-thrones.html');
});

app.get('/ozark', (req, res) => {
  res.send('<h1>Ozark</h1><p>Ozark is one of my favorite TV series because of its intense plot.</p>');
});
