# Usa un'immagine base Python
FROM python:3.9-slim
 
# Imposta l'ambiente per evitare messaggi di buffer
ENV PYTHONUNBUFFERED=1
 
# Crea e imposta una directory di lavoro
WORKDIR /app
 
# Aggiorna i pacchetti e installa dipendenze di sistema
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    curl \
    unzip \
&& rm -rf /var/lib/apt/lists/*
 
# Installa pyega3
RUN pip install --no-cache-dir pyega3
 
# Copia eventuali file di configurazione locali nella directory di lavoro
# (se necessario, ad esempio un file di configurazione di accesso a EGA)
# COPY ./config.json /app/config.json
 
# Comando di default per mantenere il container attivo
CMD ["bash"]
