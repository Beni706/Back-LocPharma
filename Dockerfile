# Utilise une image de base Node.js
FROM node:20

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier package.json et pnpm-lock.yaml pour installer les dépendances
COPY package*.json pnpm-lock.yaml ./

# Installer pnpm globalement
RUN npm install -g pnpm

# Installer les dépendances du projet
RUN pnpm install

# Copier le code source
COPY . .

# Générer le client Prisma
RUN pnpm exec prisma generate

# Exposer le port que ton API utilise
EXPOSE 8080

# Commande pour démarrer ton API
CMD ["pnpm", "start"]
