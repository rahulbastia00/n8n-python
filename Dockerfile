FROM docker.n8n.io/n8nio/n8n:2.6.3

USER root

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    build-essential \
    poppler-utils \
    tesseract-ocr \
    libgl1 \
 && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir \
    pandas \
    pytesseract \
    pdf2image \
    opencv-python-headless

USER node
