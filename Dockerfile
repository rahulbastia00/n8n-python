FROM n8nio/n8n:1.56.1-debian

USER root

RUN apt-get update \
 && apt-get install -y \
    python3 \
    python3-pip \
    build-essential \
    poppler-utils \
    tesseract-ocr \
    libgl1 \
 && rm -rf /var/lib/apt/lists/*

USER node
