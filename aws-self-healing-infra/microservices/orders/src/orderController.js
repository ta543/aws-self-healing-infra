let orders = [];

const listOrders = (req, res) => {
  res.json(orders);
};

const createOrder = (req, res) => {
  const order = req.body;
  orders.push(order);
  res.status(201).send();
};

module.exports = {
  listOrders,
  createOrder,
};
