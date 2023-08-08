# Verwende das offizielle Python 3.7-Image als Basis
FROM python:3.7

# Setze das Arbeitsverzeichnis im Container
WORKDIR /

# Kopiere die Anforderungsdatei in das Arbeitsverzeichnis
COPY requirements.txt .

# Installiere die erforderlichen Abhängigkeiten
RUN pip install --no-cache-dir -r requirements.txt

# Kopiere das Python-Skript in das Arbeitsverzeichnis
COPY teslawallconnector-exporter.py .

# Setze eine Umgebungsvariable
ENV IP="192.168.1.4"

# Führe das Python-Skript aus und übergebe die Umgebungsvariable
CMD ["python", "teslawallconnector-exporter.py", "${IP}"]
