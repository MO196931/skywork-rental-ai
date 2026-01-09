#!/bin/bash

# SCRIPT CORRIGIDO PARA CONFIGURAR O REPOSITÓRIO GITHUB
# ====================================================

echo "🔧 CONFIGURANDO REPOSITÓRIO GITHUB CORRETAMENTE"
echo "=============================================="

# Verificar se estamos no diretório correto
echo "📍 Diretório atual: $(pwd)"

# Remover configuração incorreta anterior
echo "🗑️ Removendo configuração incorreta anterior..."
git remote remove origin 2>/dev/null || echo "Nenhuma configuração anterior encontrada"

# Configurar repositório com a URL correta
echo "🔗 Configurando repositório com URL correta..."
git remote add origin https://github.com/MO196931/skywork-rental-ai.git

# Verificar configuração
echo "✅ Verificando configuração:"
git remote -v

# Garantir que estamos na branch main
echo "🌿 Garantindo que estamos na branch main..."
git branch -M main

echo ""
echo "🚀 AGORA VOCÊ PRECISA CONFIGURAR A AUTENTICAÇÃO:"
echo "==============================================="
echo ""
echo "OPÇÃO 1: Usar Token de Acesso Pessoal (Recomendado)"
echo "1. Acesse: https://github.com/settings/tokens"
echo "2. Clique em 'Generate new token'"
echo "3. Dê um nome ao token (ex: skywork-rental-ai)"
echo "4. Selecione escopos: repo (todos os checkboxes)"
echo "5. Clique em 'Generate token'"
echo "6. Copie o token gerado"
echo ""
echo "Depois execute:"
echo "git push -u origin main"
echo ""
echo "Quando solicitado:"
echo "- Username: MO196931"
echo "- Password: Cole o TOKEN (não sua senha)"
echo ""
echo "OPÇÃO 2: Usar SSH (Mais seguro)"
echo "1. Gere uma chave SSH:"
echo "   ssh-keygen -t ed25519 -C "your_email@example.com""
echo "2. Adicione a chave ao ssh-agent:"
echo "   eval "$(ssh-agent -s)""
echo "   ssh-add ~/.ssh/id_ed25519"
echo "3. Adicione a chave SSH ao GitHub:"
echo "   - Copie a chave pública: cat ~/.ssh/id_ed25519.pub"
echo "   - Acesse: https://github.com/settings/keys"
echo "   - Clique 'New SSH key' e cole a chave"
echo "4. Mude o remote para SSH:"
echo "   git remote remove origin"
echo "   git remote add origin git@github.com:MO196931/skywork-rental-ai.git"
echo "   git push -u origin main"
echo ""
echo "⚠️ IMPORTANTE:"
echo "- NUNCA compartilhe seu token ou chave privada"
echo "- Tokens expiram conforme configuração"
echo "- SSH é mais seguro mas requer configuração inicial"
