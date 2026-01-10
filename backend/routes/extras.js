const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  res.json([{ id: 'e1', name: 'GPS', price: 4.99 }]);
});

router.post('/', (req, res) => {
  res.status(201).json({ message: 'Extra created (stub)', data: req.body });
});

module.exports = router;
