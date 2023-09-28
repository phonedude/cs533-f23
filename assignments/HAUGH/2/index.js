const express = require('express');
const cookieParser = require('cookie-parser');

const app = express();

app.use(cookieParser());
app.use(express.static('public'));

app.use(express.static('my-node-server'))
app.get('/Xerjoff.html', (req, res) => {
    res.send('<html><head><link rel="icon" href="/favicon.ico"></head><body><h1>Xerjoff</h1><hr><p>Xerjoff is an italian perfumery who crafts beautiful perfume that brings tears to your eyes in a <b>Good</b> way. My favorite perfumes from this house are Italica and Lira both gourmand fragrances.</p><hr></body></html>');
    });

app.get('/SalvadorDali.html', (req, res) => {
    res.send('<html><head><link rel="icon" href="\salvador-dali.ico"></head><body><h1>Salvador Dali</h1><hr><p>The reason I adore Salvador Dali is because his art and perfume makes you think. The art will make you start up a conversation within yourself or with others around you.</p><hr></body></html>');
});

app.get('/HowlsMovingCastle.html', (req, res) => {
    res.send('<html><head><link rel="icon" href="\sophieHowlsFavicon.ico"></head><body><h1> Howls Moving Castle</h1><hr><p>The reason I adore this movie so much, is because its filled with hope, grace, and raising self esteem. As well as, how to stay in a wealthy sorcerers floating home for free.</p><hr></body></html>');
});

const PORT = 4000;
app.listen(PORT, () => {
    console.log(`Server is running at http://localhost:${PORT}`);
});
