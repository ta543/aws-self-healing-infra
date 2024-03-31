const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());

// Routes
const routes = require('./routes');
app.use(routes);

app.listen(port, () => {
  console.log(`Orders service listening at http://localhost:${port}`);
});
