const express = require('express');
const router = express.Router();

// Exemplo simples - substituir por controllers reais e Mongoose models
router.get('/', async (req, res) => {
  // TODO: listar utilizadores (usar model User)
  res.json([{ id: 'u1', name: 'João' }]);
});

router.post('/', async (req, res) => {
  // TODO: criar utilizador (validação, hashing de password)
  const payload = req.body;
  res.status(201).json({ message: 'User created (stub)', data: payload });
});

module.exports = router;
