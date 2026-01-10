const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  res.json([{ id: 'ins1', name: 'Seguro Básico', price: 9.99 }]);
});

router.post('/', (req, res) => {
  res.status(201).json({ message: 'Insurance created (stub)', data: req.body });
});

module.exports = router;
