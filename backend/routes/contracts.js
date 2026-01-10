const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  res.json([{ id: 'ct1', userId: 'u1', carId: 'c1', status: 'active' }]);
});

router.post('/generate', (req, res) => {
  // TODO: gerar contrato (p.e. juntar dados + template + PDF)
  const payload = req.body;
  res.status(201).json({ message: 'Contract generated (stub)', data: payload });
});

module.exports = router;
