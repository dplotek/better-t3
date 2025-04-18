import { env } from '@/env'
import { drizzle } from 'drizzle-orm/node-postgres'


export const db = drizzle(env.DATABASE_URL)
export const prefix = "better_t3_"