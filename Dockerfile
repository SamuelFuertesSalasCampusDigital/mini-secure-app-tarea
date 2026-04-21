FROM node:20-alpine

# Definimos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos de dependencias para aprovechar la caché de capas
COPY package*.json ./

# Instalamos las dependencias
RUN npm install

# COPIAMOS EL RESTO DEL PROYECTO 
COPY . .

# Exponemos el puerto en el que corre la app
EXPOSE 3001

# Comando para arrancar la aplicación
CMD ["npm", "start"]
