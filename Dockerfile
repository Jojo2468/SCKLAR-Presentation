# Base image mit Python
FROM python:3.11-slim

# Arbeitsverzeichnis setzen
WORKDIR /app

# Dependencies kopieren und installieren
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# App-Dateien kopieren
COPY . .

# Flask App starten
CMD ["python", "app.py"]