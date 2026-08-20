# AI-Assisted Budget Allocation Optimizer for Gram Panchayats

A decision support system for Gram Panchayats that analyzes village demographic data, infrastructure gaps, and scheme guidelines to recommend optimal budget allocation across roads, water, sanitation, and education — along with projected impact.

## 1. Project Idea

Panchayats often allocate development funds without a clear, data-driven view of where the money will have the most impact. This project analyzes demographic and infrastructure data for a village, predicts the likely impact of investing in different sectors, and recommends a budget split that maximizes overall benefit within scheme guidelines.

## 2. Modules

| # | Module | Purpose | Tool |
|---|--------|---------|------|
| 1 | Data Analysis | Analyze village demographic and infrastructure data | Python |
| 2 | Machine Learning | Predict the potential impact of different investments | Python + ML |
| 3 | Budget Allocation | Recommend how the available budget should be distributed across sectors | Python + ML |
| 4 | Database | Store village, demographic, infrastructure, spending, and scheme-related data | MySQL |
| 5 | Backend / API | Connect the frontend, database, and Python/ML processing | FastAPI |
| 6 | Frontend / Dashboard | Interface for Panchayat officials to view and manage recommendations | React |

## 3. Tech Stack

- **Python** — data processing and project logic
- **Machine Learning** — impact prediction and intelligent recommendations
- **FastAPI** — backend and API
- **React** — frontend and dashboard
- **MySQL** — database

## 4. Overall Working

```
Village Data
   ↓
Python — Analyze Demographics + Infrastructure Gaps
   ↓
ML — Predict Impact
   ↓
Budget Allocation
   ↓
Check Budget & Scheme Requirements
   ↓
Recommended Allocation
   ↓
FastAPI
   ↓
React — Panchayat Official Dashboard
```

MySQL stores village, spending, and scheme-related data throughout the process.

## 5. Repository Structure

```
prj69/
├── backend/            # FastAPI app (API layer connecting DB, ML, frontend)
│   └── app/
├── ml/                 # Data analysis, ML models, budget allocation logic
├── frontend/            # React dashboard
│   └── src/
├── database/            # MySQL schema and seed data
│   ├── schema/
│   └── seed/
├── docs/                 # Diagrams, research paper drafts, review notes
├── .gitignore
└── README.md
```

## 6. Getting Started

### Backend (FastAPI)
```bash
cd backend
python -m venv venv
source venv/bin/activate      # venv\Scripts\activate on Windows
pip install -r requirements.txt
uvicorn app.main:app --reload
```

### ML / Data Analysis (Python)
```bash
cd ml
pip install -r requirements.txt
```

### Frontend (React)
```bash
cd frontend
npm install
npm start
```

### Database (MySQL)
```bash
mysql -u root -p < database/schema/schema.sql
mysql -u root -p < database/seed/seed.sql
```

## 7. Team / Review Status

- Review 0: Project idea, modules, and tech stack finalized (see `docs/`).

## 8. License

Add a license (e.g. MIT) if this will be public — see `LICENSE`.
