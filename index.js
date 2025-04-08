const express = require('express');
const app = express();
const cors = require('cors');
require('dotenv').config();
const port = process.env.PORT || 8080;


app.use(cors());
app.use(express.json());


app.get('/', (req, res) => {
   res.status(200).send('ok');
   }
);

app.get('/greeting', (req, res) => {
   res.status(200).send({message: 'Hello, World!'});
})

app.listen(port, () => console.log(`Server is running on port ${port}`));