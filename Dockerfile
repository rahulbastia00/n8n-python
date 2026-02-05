FROM docker.n8n.io/n8nio/n8n:2.6.3

USER root

RUN apk update && apk add --no-cache \
    python3 \
    py3-pip \
    build-base \
    poppler-utils \
    tesseract-ocr \
    libgl \
    libstdc++ \
    gcc \
    musl-dev

RUN pip3 install --no-cache-dir \
    pandas \
    pytesseract \
    pdf2image \
    opencv-python-headless

USER node
