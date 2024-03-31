const express = require('express');
const router = express.Router();
const orderController = require('./orderController');

router.get('/', (req, res) => res.send('Orders Microservice is running...'));
router.get('/orders', orderController.listOrders);
router.post('/orders', orderController.createOrder);

module.exports = router;
