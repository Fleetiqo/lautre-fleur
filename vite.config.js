import { defineConfig } from 'vite'

export default defineConfig({
  base: '/lautre-fleur/',
  build: {
    outDir: 'dist',
    assetsDir: 'assets',
    emptyOutDir: true
  }
})
