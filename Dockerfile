FROM node:16-slim

WORKDIR /banco_react
COPY . /banco_react

# 1. Instalar dependencias
RUN npm install

# 2. Compilar la aplicación para producción (esto genera la carpeta 'build')
RUN npm run build

# 3. Instalar 'serve', un servidor web ligero ideal para entornos estáticos
RUN npm install -g serve

# 4. Variables de entorno de red
ENV HOST=0.0.0.0
ENV PORT=3000
EXPOSE 3000

# 5. Iniciar la aplicación apuntando a la carpeta compilada
CMD ["serve", "-s", "build", "-l", "tcp://0.0.0.0:3000"]