# This is a sample Dockerfile you can modify to deploy your own app based on face_recognition

FROM python:3.8-slim-bullseye

RUN apt-get update && apt-get install --fix-missing -y \
    build-essential \
    cmake \
    gfortran \
    git \
    wget \
    curl \
    graphicsmagick \
    libgraphicsmagick1-dev \
    libatlas-base-dev \
    libavcodec-dev \
    libavformat-dev \
    libgtk2.0-dev \
    libjpeg-dev \
    liblapack-dev \
    libswscale-dev \
    pkg-config \
    python3-dev \
    python3-numpy \
    software-properties-common \
    zip \
  && rm -rf /var/lib/apt/lists/*

RUN pip install face_recognition
