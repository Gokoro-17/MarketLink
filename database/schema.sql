-- PostgreSQL starter schema; extend as marketplace requirements are defined.
CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE IF NOT EXISTS users (id UUID PRIMARY KEY DEFAULT gen_random_uuid(), email TEXT NOT NULL UNIQUE, display_name TEXT NOT NULL, role TEXT NOT NULL CHECK (role IN ('grower','customer','admin')), created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(), updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW());
CREATE TABLE IF NOT EXISTS products (id UUID PRIMARY KEY DEFAULT gen_random_uuid(), grower_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE, name TEXT NOT NULL, description TEXT NOT NULL DEFAULT '', price_cents INTEGER NOT NULL CHECK (price_cents >= 0), unit TEXT NOT NULL DEFAULT 'each', is_available BOOLEAN NOT NULL DEFAULT TRUE, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW());
CREATE INDEX IF NOT EXISTS products_grower_id_idx ON products(grower_id);
CREATE INDEX IF NOT EXISTS products_available_idx ON products(is_available) WHERE is_available = TRUE;
