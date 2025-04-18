import { env } from '@/env'
import { drizzle } from 'drizzle-orm/node-postgres'
import { pgTableCreator } from 'drizzle-orm/pg-core'

export const db = drizzle(env.DATABASE_URL)
export const createTable = pgTableCreator(name => `better_t32_${name}`)