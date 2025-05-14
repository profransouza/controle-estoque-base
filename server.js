//Declaracao de variaveis
require('dotenv').config();
const express = require('express');
const cors = require('cors');
const path = require('path');

// Inicia o servidor express
const app = express();

// Servindo arquivos estaticos
app.use(express.static(path.join(__dirname, 'src/public')));


// Iniciar servidor
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});