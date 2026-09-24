# MarketLink

MarketLink is a marketplace starter intended to connect local growers with customers. This repository provides the initial frontend, API, and PostgreSQL schema foundations; product flows such as registration, login, listings, and checkout can be built next.

## Structure
- `frontend/` — React 18 application built with Vite
- `backend/` — Express API with a health endpoint
- `database/` — PostgreSQL schema and seed entry point
- `docs/` — architecture, database, and screenshot documentation areas

## Requirements
Node.js 20+ and npm. PostgreSQL is needed when database integration is added.

## Start the frontend
`cd frontend`, then run `npm install` and `npm run dev`.

## Start the API
In another terminal, `cd backend`, run `npm install`, copy `.env.example` to `.env`, then run `npm run dev`.

The API health check is http://localhost:4000/api/health.
