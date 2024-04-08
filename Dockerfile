# Establecer la imagen base
FROM node:18-alpine

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos de la aplicación
COPY /app/src .
COPY /app/spec .
COPY /app/package.json .

# Instalar dependencias necesarias
RUN npm install

# Exoiber por el puerto 3000 
EXPOSE 3000

# Iniciar aplicación
CMD ["node", "index.js"]
