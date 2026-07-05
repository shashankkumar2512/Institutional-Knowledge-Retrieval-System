#!/bin/bash
# push_to_github.sh
# Run this from inside the TCS_CASE_A folder to push everything to
# https://github.com/sushobhan16/TCS
#
# Usage:
#   chmod +x push_to_github.sh
#   ./push_to_github.sh

set -e

echo "=== IKRS — Push to GitHub ==="
echo ""

read -p "GitHub username [sushobhan16]: " GH_USER
GH_USER=${GH_USER:-sushobhan16}

read -p "Repository name [TCS]: " GH_REPO
GH_REPO=${GH_REPO:-TCS}

read -sp "GitHub Personal Access Token: " GH_TOKEN
echo ""
echo ""

git init
git add -A
git commit -m "feat: IKRS complete LLMOps capstone — backend + React frontend

Backend (Python):
- FastAPI REST API with /query, /dashboard/*, /evaluate/*, /prompts/* endpoints
- LangChain LCEL RAG pipeline: pgvector retrieval -> Gemini 2.0 Flash generation
- sentence-transformers/all-MiniLM-L6-v2 embeddings + pgvector (PostgreSQL)
- Langfuse observability: full span instrumentation per invocation
- SQLite cost tracker: per-query token + cost logging with dashboard aggregates
- Guardrails: injection detection, out-of-scope filter, length limit, confidence threshold
- LLM-as-judge evaluation harness (golden dataset, 20 questions)
- Prompt versioning: prompt_v1.txt -> prompt_v2.txt (+16pp faithfulness, +17pp relevance)
- PDF ingestion + chunking pipeline (RecursiveCharacterTextSplitter)
- Docker + docker-compose configuration

Frontend (React):
- Chat interface: RAG chatbot with trace viewer, source badges, guardrail display
- Evaluation tab: performance charts (v1 vs v2), retrieval results, golden dataset
- Langfuse traces tab: span timeline, token counts, latency breakdown
- Cost dashboard: daily bar chart + token breakdown table
- Prompt versioning tab: side-by-side diff, changelog, evaluation impact
- Guardrails demo: live test cases for all 4 guard types

TCS LLMOps Capstone — Use Case A: Institutional Knowledge Retrieval System"

git branch -M main
git remote add origin "https://${GH_USER}:${GH_TOKEN}@github.com/${GH_USER}/${GH_REPO}.git" 2>/dev/null \
  || git remote set-url origin "https://${GH_USER}:${GH_TOKEN}@github.com/${GH_USER}/${GH_REPO}.git"

git push -u origin main --force

echo ""
echo "Done. View it at: https://github.com/${GH_USER}/${GH_REPO}"
