FROM n8nio/n8n:latest

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
    requests \
    numpy \
    pandas \
    fastapi \
    uvicorn \
    pdfminer.six \
    python-docx \
    pillow \
    beautifulsoup4

USER node
