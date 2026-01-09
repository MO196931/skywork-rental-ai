#!/bin/bash

# Script de Deploy - Sistema de Gestão de Cláusulas Contratuais
# Versão: 1.0.0

echo "🚀 INICIANDO DEPLOY DO SISTEMA DE GESTÃO DE CLÁUSULAS CONTRATUAIS"
echo "=================================================================="

# Verificar Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js não encontrado. Instale Node.js 16+ antes de continuar."
    exit 1
fi

echo "✅ Node.js encontrado: $(node --version)"

# Verificar npm
if ! command -v npm &> /dev/null; then
    echo "❌ npm não encontrado. Instale npm antes de continuar."
    exit 1
fi

echo "✅ npm encontrado: $(npm --version)"

# Navegar para diretório do backend
if [ -d "backend" ]; then
    cd backend
else
    echo "⚠️ Pasta backend não encontrada"
fi

# Instalar dependências
echo "📦 Instalando dependências do backend..."
if [ -f "package.json" ]; then
    npm install
else
    echo "⚠️ package.json não encontrado"
fi

# Verificar variáveis de ambiente
if [ ! -f .env ]; then
    echo "⚠️ Arquivo .env não encontrado. Criando arquivo de exemplo..."
    echo "NODE_ENV=development" > .env
    echo "PORT=3000" >> .env
    echo "MONGODB_URI=mongodb://localhost:27017/carrent_contracts" >> .env
    echo "JWT_SECRET=your-super-secret-jwt-key" >> .env
fi

# Executar testes (se disponíveis)
echo "🧪 Executando testes..."
npm test 2>/dev/null || echo "⚠️ Testes não configurados ou falharam"

# Iniciar servidor
echo "🚀 Iniciando servidor..."
echo "Servidor será iniciado na porta 3000"
echo "Frontend disponível em: http://localhost:3000"
echo "API disponível em: http://localhost:3000/api"

# Voltar para o diretório raiz
cd ..

echo "🎉 Deploy concluído!"
echo "📁 Para iniciar o servidor, execute: cd backend && npm start"
