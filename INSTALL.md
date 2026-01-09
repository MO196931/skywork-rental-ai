# 🚀 Instruções de Instalação e Deploy

## Sistema de Gestão de Cláusulas Contratuais

### Pré-requisitos

1. **Node.js 16+** - [Download](https://nodejs.org/)
2. **MongoDB** - [Download](https://www.mongodb.com/try/download/community)
3. **Git** - [Download](https://git-scm.com/)

### Instalação Rápida

1. **Clone o repositório:**
   ```bash
   git clone <repository-url>
   cd carrent-contracts
   ```

2. **Execute o script de deploy:**
   ```bash
   chmod +x deploy.sh
   ./deploy.sh
   ```

3. **Acesse o sistema:**
   - Frontend: http://localhost:3000
   - API: http://localhost:3000/api
   - Documentação: http://localhost:3000/docs

### Instalação Manual

1. **Backend:**
   ```bash
   cd backend
   npm install
   cp .env.example .env
   # Configure as variáveis de ambiente no arquivo .env
   npm start
   ```

2. **Frontend:**
   - Abra qualquer arquivo HTML no navegador
   - Ou use um servidor web local

### Configuração

1. **Banco de Dados:**
   - MongoDB rodando na porta padrão (27017)
   - Ou configure MONGODB_URI no .env

2. **Variáveis de Ambiente:**
   ```env
   NODE_ENV=production
   PORT=3000
   MONGODB_URI=mongodb://localhost:27017/carrent_contracts
   JWT_SECRET=your-secret-key
   REDIS_URL=redis://localhost:6379
   ```

### Estrutura do Projeto

```
carrent-contracts/
├── backend/                 # API Node.js/Express
│   ├── controllers/        # Controladores da API
│   ├── models/            # Modelos do banco de dados
│   ├── routes/            # Rotas da API
│   ├── services/          # Serviços de negócio
│   ├── middleware/        # Middlewares
│   ├── utils/             # Utilitários
│   └── app.js             # Aplicação principal
├── frontend/               # Interface administrativa
├── docs/                   # Documentação
└── deploy.sh               # Script de deploy
```

### Módulos Disponíveis

- 📊 **Dashboard Administrativo**
- 👥 **Gestão de Usuários**
- 🚗 **Gestão de Veículos**
- 🛡️ **Gestão de Seguros**
- ⭐ **Gestão de Extras**
- 👤 **Gestão de Papéis**
- 📄 **Gestão de Cláusulas**
- 📋 **Contratos Profissionais**

### Suporte

Para suporte técnico, consulte a documentação na pasta `docs/`.

### Licença

MIT License - Veja LICENSE para detalhes.
