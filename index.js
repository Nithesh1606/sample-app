const express = require('express');
const app = express();
const port = 4000;

app.get('/', (req, res) => {
    res.send('Hello, World! This is a sample CI/CD app.');
});

app.listen(port, () => {
    console.log(`App running on http://localhost:${port}`);
});

