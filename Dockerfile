FROM python:3.11-slim

WORKDIR /app

# Abhängigkeiten installieren
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# gesamten Quellcode kopieren
COPY . .

# Default-Command
CMD ["python", "app.py"]
#