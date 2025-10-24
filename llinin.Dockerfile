# Usamos una imagen base de Python
FROM python:3.10-slim

# Creamos un directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos todos los archivos del proyecto al contenedor
COPY . .

# Instalamos las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponemos el puerto donde corre la app
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
