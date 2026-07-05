<div align="center">

# 🎓 Institutional Knowledge Retrieval System (IKRS)

### Production-Grade RAG System for Institutional Question Answering

**TCS LLMOps Capstone – Use Case A**

[![Python](https://img.shields.io/badge/Python-3.11-blue?logo=python)](https://python.org)
[![FastAPI](https://img.shields.io/badge/FastAPI-Backend-009688?logo=fastapi)](https://fastapi.tiangolo.com/)
[![React](https://img.shields.io/badge/React-Frontend-61DAFB?logo=react)](https://react.dev/)
[![LangChain](https://img.shields.io/badge/LangChain-LCEL-green)](https://www.langchain.com/)
[![Gemini](https://img.shields.io/badge/Google-Gemini%202.0%20Flash-blue)](https://ai.google.dev/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-pgvector-336791?logo=postgresql)](https://www.postgresql.org/)
[![Docker](https://img.shields.io/badge/Docker-Containerized-2496ED?logo=docker)](https://docker.com/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

*A production-ready Retrieval-Augmented Generation (RAG) platform that answers institutional queries using semantic search, LangChain LCEL, pgvector, Gemini 2.0 Flash, and complete LLMOps observability.*

</div>

---

# 📖 Overview

IKRS is an enterprise-style **Retrieval-Augmented Generation (RAG)** application developed as part of the **TCS LLMOps Capstone**.

Instead of relying solely on an LLM, the system retrieves relevant institutional documents from a vector database and uses them to generate accurate, grounded, and hallucination-resistant answers.

The project demonstrates an end-to-end **LLMOps pipeline**, including:

- Document ingestion
- Semantic chunking
- Vector embeddings
- PostgreSQL pgvector retrieval
- LangChain LCEL orchestration
- Gemini 2.0 Flash generation
- Langfuse observability
- Prompt versioning
- Cost tracking
- Evaluation framework
- Guardrails against unsafe prompts

---

# ✨ Key Features

- 📄 PDF document ingestion pipeline
- ✂️ Automatic document chunking
- 🧠 Semantic embeddings using MiniLM
- 🔍 Vector similarity search using pgvector
- 🤖 Gemini 2.0 Flash powered responses
- ⚡ LangChain LCEL orchestration
- 📊 Langfuse tracing & observability
- 💰 Token usage & cost dashboard
- 🧪 Golden dataset evaluation
- 🛡 Prompt injection detection
- 🚫 Out-of-domain query rejection
- 📈 Prompt version comparison
- 🐳 Docker deployment

---

# 🏗 Architecture

```text
                         +-----------------------+
                         | Institutional PDFs    |
                         +----------+------------+
                                    |
                                    v
                     Recursive Character Chunking
                                    |
                                    v
                   MiniLM Sentence Transformer Embeddings
                                    |
                                    v
                     PostgreSQL + pgvector Vector Store
                                    |
                     User Question
                                    |
                                    v
                     Retrieval (Top-K Semantic Search)
                                    |
                                    v
                 Guardrails & Prompt Validation Layer
                                    |
                                    v
              LangChain LCEL + Prompt Template (v2)
                                    |
                                    v
                    Gemini 2.0 Flash Large Language Model
                                    |
             +----------------------+------------------+
             |                                         |
             v                                         v
     Langfuse Tracing                     SQLite Cost Tracker
             |                                         |
             +----------------------+------------------+
                                    |
                                    v
                             FastAPI REST API
                                    |
                                    v
                           React + Vite Frontend
```

---

# 🛠 Technology Stack

| Layer | Technology |
|--------|------------|
| Frontend | React + Vite |
| Backend | FastAPI |
| LLM | Gemini 2.0 Flash |
| Framework | LangChain LCEL |
| Embeddings | sentence-transformers MiniLM |
| Vector Database | PostgreSQL + pgvector |
| Observability | Langfuse |
| Cost Tracking | SQLite |
| Containerization | Docker |
| Evaluation | Golden Dataset + LLM-as-Judge |

---

# 📂 Project Structure

```text
IKRS
│
├── backend
│   ├── src
│   ├── evaluation
│   ├── prompts
│   ├── data
│   ├── docs
│   ├── Dockerfile
│   └── requirements.txt
│
├── frontend
│   ├── src
│   ├── public
│   ├── package.json
│   └── vite.config.js
│
├── docker-compose.yml
├── .env.example
└── README.md
```

---

# 🚀 Installation

## Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/IKRS.git

cd IKRS
```

---

## Configure Environment

```bash
cp .env.example .env
```

Configure:

```
GOOGLE_API_KEY=
LANGFUSE_PUBLIC_KEY=
LANGFUSE_SECRET_KEY=
DB_HOST=
DB_PORT=
DB_USER=
DB_PASSWORD=
DB_NAME=
```

---

## Start PostgreSQL

```bash
docker-compose up -d db
```

---

## Install Backend

```bash
cd backend

pip install -r requirements.txt
```

---

## Build Vector Database

```bash
python src/chunking.py

python src/embeddings.py

python src/load_to_pgvector.py
```

---

## Start Backend

```bash
uvicorn src.api:app --reload
```

---

## Start Frontend

```bash
cd frontend

npm install

npm run dev
```

---

# 📡 REST API

| Method | Endpoint | Description |
|----------|--------------------------|----------------------------|
| POST | /query | Ask institutional question |
| GET | /health | Health check |
| GET | /dashboard/today | Today's usage |
| GET | /dashboard/daily | Last 30 days |
| GET | /dashboard/total | Overall statistics |
| GET | /dashboard/recent-queries | Recent questions |
| POST | /evaluate | Run evaluation |
| GET | /evaluate/results | Evaluation report |
| GET | /prompts | Prompt versions |

---

# 🛡 Guardrails

✔ Prompt Injection Detection

✔ Confidence Threshold Filtering

✔ Query Length Validation

✔ Out-of-Scope Detection

✔ Safe Response Generation

---

# 📊 Evaluation Results

| Metric | Prompt V1 | Prompt V2 |
|---------|-----------|-----------|
| Faithfulness | 72% | **88%** |
| Relevance | 68% | **85%** |
| Retrieval Hit@3 | 80% | **85%** |
| Guardrail Precision | 91% | **97%** |

---

# 📈 LLMOps Capabilities

- End-to-End RAG Pipeline
- LangChain LCEL
- Prompt Versioning
- Golden Dataset Evaluation
- Langfuse Observability
- Cost Governance
- Docker Deployment
- Semantic Retrieval
- pgvector Integration
- Enterprise Guardrails

---

# 📷 Screenshots

## Home Page

<img width="1918" height="968" alt="home" src="https://github.com/user-attachments/assets/90825b5c-9acf-4a85-b49a-bcd8dbdcbd0b" />


```
screenshots/home.png
```

---

## Query Interface

<img width="1913" height="970" alt="chat" src="https://github.com/user-attachments/assets/3331ac28-15bd-4c7a-a708-8c006fb668fa" />


```
screenshots/chat.png
```

---

## Langfuse Dashboard

<img width="1919" height="968" alt="langfuse" src="https://github.com/user-attachments/assets/5b3639b1-e484-426a-989c-d5bc427c478a" />


```
screenshots/langfuse.png
```

---

## Cost Dashboard

<img width="1919" height="973" alt="dashboard" src="https://github.com/user-attachments/assets/d1dbc0d2-e4c7-40b7-8c03-439de2425fab" />


```
screenshots/dashboard.png
```

---

# 🎯 Future Improvements

- Hybrid Search (BM25 + Vector)
- Reranking using Cross Encoder
- Multi-document citations
- Authentication & Role Management
- Streaming Responses
- Kubernetes Deployment
- CI/CD using GitHub Actions
- Monitoring with Prometheus & Grafana

---

# 👨‍💻 Author

**Shashank Kumar**

Final Year B.Tech (Computer Science Engineering)

SOA ITER, Bhubaneswar

GitHub:
https://github.com/shashankkumar2512

LinkedIn:
https://www.linkedin.com/in/shashank-kumar25/

---

# ⭐ If you found this project useful

Please consider giving it a ⭐ on GitHub.

---

## 📜 License

This project is licensed under the MIT License.

---

<div align="center">

Built with ❤️ using FastAPI, React, LangChain, Gemini & PostgreSQL.

</div>
