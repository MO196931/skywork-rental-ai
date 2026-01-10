const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  res.json([{ id: 'cl1', title: 'Termos de Uso', content: '...' }]);
});

router.post('/', (req, res) => {
  res.status(201).json({ message: 'Clause created (stub)', data: req.body });
});

module.exports = router;
