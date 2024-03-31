const express = require('express');
const app = express();
const port = 3000;

let orders = [];

app.use(express.json());

app.get('/', (req, res) => {
  res.send('Orders Microservice is running...');
});

app.get('/orders', (req, res) => {
  res.json(orders);
});

app.post('/orders', (req, res) => {
  const order = req.body;
  orders.push(order);
  res.status(201).send();
});

app.listen(port, () => {
  console.log(`Orders service listening at http://localhost:${port}`);
});
