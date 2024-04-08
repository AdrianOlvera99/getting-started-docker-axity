# Establecemos la imagen base
FROM node:18-alpine

# Establecemos el directorio de trabajo en el contenedor
WORKDIR /app

# Copiamos los archivos de la aplicación
COPY /app/src .
COPY /app/spec .
COPY /app/package.json .

# Instalamos las dependencias de la aplicación
RUN npm install

# Exponemos el puerto 3000 (si tu aplicación escucha en ese puerto)
EXPOSE 3000

# Comando para iniciar la aplicación cuando se ejecute el contenedor
CMD ["node", "index.js"]
