# Utilisez l'image Node.js officielle en tant que base
FROM node:19

# Définissez le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copiez le fichier package.json et package-lock.json (le cas échéant)
COPY package*.json ./

# Installez les dépendances de l'application
RUN npm install

# Copiez le reste des fichiers de l'application
COPY . .

# Exposez le port 3000 (ou tout autre port que votre application utilise)
EXPOSE 3000

# Commande par défaut pour démarrer l'application
CMD [ "npm", "start" ]
