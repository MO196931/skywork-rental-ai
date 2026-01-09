#!/bin/bash

# SCRIPT PARA ENVIAR TODO O PROJETO PARA O GITHUB
# ================================================

echo "🚀 INICIANDO ENVIO DO PROJETO PARA O GITHUB"
echo "==========================================="

# Verificar se estamos no diretório correto
echo "📍 Diretório atual: $(pwd)"

# Verificar se o Git está instalado
if ! command -v git &> /dev/null; then
    echo "❌ Git não encontrado. Instale o Git antes de continuar."
    exit 1
fi

echo "✅ Git encontrado: $(git --version)"

# Inicializar repositório Git (se não existir)
if [ ! -d ".git" ]; then
    echo "🔧 Inicializando repositório Git..."
    git init
else
    echo "✅ Repositório Git já existe"
fi

# Adicionar todos os arquivos
echo "📦 Adicionando todos os arquivos ao repositório..."
git add .

# Verificar quais arquivos serão commitados
echo "📋 Arquivos que serão enviados:"
git status --porcelain | wc -l | xargs echo "Total de arquivos: "

# Criar commit
echo "📝 Criando commit..."
git commit -m "feat: Initial commit - Complete Car Rental System with Contracts Management

- Full stack car rental application with contracts management
- Admin dashboard with clause management
- User, vehicle, insurance, and extras management
- Professional contract generation
- Complete backend API with Node.js/Express
- MongoDB integration
- Comprehensive documentation
- Testing strategies and best practices
- Deployment configurations
- Organized folder structure"

# Instruções para configurar repositório remoto
echo ""
echo "🔗 PRÓXIMOS PASSOS:"
echo "1. Crie um repositório no GitHub (https://github.com/new)"
echo "2. Execute os comandos abaixo (substitua SEU_USUARIO pelo seu nome de usuário):"
echo ""
echo "   git remote add origin https://github.com/SEU_USUARIO/skywork-rental-ai.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "🎉 Projeto pronto para ser enviado ao GitHub!"
