# Utilise l'image officielle de Node.js
FROM node:20

# Définir le répertoire de travail
WORKDIR /usr/src/app

# Copier package.json et installer les dépendances
COPY package*.json ./
RUN npm install

# Copier le reste du code de l'application
COPY . .

# Exposer le port 3000
EXPOSE 3000

# Lancer l'application
CMD ["npm", "start"]
