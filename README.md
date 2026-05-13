# Assistente Inteligente de Auditoria de Inventário

Este projeto é uma solução de extensão universitária desenvolvida para otimizar a acurácia de estoques em Centros de Distribuição, utilizando **Vue.js 3** no frontend e **PostgreSQL** no backend.

## Tecnologias Utilizadas
- **Frontend:** HTML5 Semântico, CSS3 (Responsivo/Mobile-First) e Vue.js 3.
- **Backend/DB:** PostgreSQL 15 (com uso de Views e Triggers para auditoria).
- **Controle de Versão:** Git & GitHub.

---

## Guia de Instalação e Execução

### 1. Pré-requisitos
Antes de começar, você vai precisar ter instalado em sua máquina:
* [Git](https://git-scm.com/)
* [PostgreSQL](https://www.postgresql.org/)
* Um navegador moderno (Chrome, Edge ou Firefox)

### 2. Configuração do Banco de Dados
1. Abra o seu terminal ou ferramenta de gestão do PostgreSQL (ex: pgAdmin).
2. Crie um novo banco de dados chamado `auditoria_db`.
3. Execute os scripts localizados na pasta `/sql` deste repositório na seguinte ordem:
   - `schema.sql` (Criação das tabelas e regras).
   - `data_test.sql` (Carga inicial de dados para teste).

### 3. Execução do Frontend
Como a aplicação utiliza Vue.js via CDN para fins de prototipagem rápida:
1. Navegue até a pasta `/frontend`.
2. Abra o arquivo `index.html` em qualquer navegador.
3. A interface carregará automaticamente as regras de estilização responsiva do arquivo `style.css`.

---

## Segurança e Boas Práticas
Conforme detalhado no relatório técnico:
- **Integridade:** O sistema utiliza chaves estrangeiras e restrições `NOT NULL` para evitar dados órfãos.
- **Auditoria Automática:** Divergências são calculadas via banco de dados para evitar manipulação indevida no client-side.
- **Responsividade:** Interface testada para dispositivos móveis (Mobile-First), permitindo o uso por auditores em movimento no armazém.

---
**Desenvolvido por:** Caroline Cardoso dos Santos  
**Curso:** Tecnologia da Informação - UFMS Digital
