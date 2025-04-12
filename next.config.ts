import type { NextConfig } from 'next'
import "./src/env.js";

const config: NextConfig = {
  experimental: {
    nodeMiddleware: true,
  },
};

export default config;
