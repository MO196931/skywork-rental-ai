const express = require('express');
const router = express.Router();

router.get('/', async (req, res) => {
  // TODO: retornar lista de veículos do DB
  res.json([{ id: 'c1', make: 'Toyota', model: 'Corolla', plate: 'ABC-1234' }]);
});

router.post('/', async (req, res) => {
  // TODO: criar veículo
  res.status(201).json({ message: 'Car created (stub)', data: req.body });
});

module.exports = router;
