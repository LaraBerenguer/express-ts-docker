# Usa una imagen oficial de Node.js
FROM node:18

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código
COPY . .

# Construye el TypeScript
RUN npm run build

# Expone el puerto
EXPOSE 3000

# Comando para iniciar el servidor
CMD ["npm", "run", "start"]