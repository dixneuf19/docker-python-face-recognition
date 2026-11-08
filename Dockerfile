# This is a sample Dockerfile you can modify to deploy your own app based on face_recognition

FROM python:3.14-slim-trixie

RUN apt-get update && apt-get install --fix-missing -y \
    build-essential \
    cmake \
    gfortran \
    git \
    wget \
    curl \
    graphicsmagick \
    libgraphicsmagick1-dev \
    libopenblas-dev \
    libavcodec-dev \
    libavformat-dev \
    libgtk2.0-dev \
    libjpeg-dev \
    liblapack-dev \
    libswscale-dev \
    pkg-config \
    zip \
  && rm -rf /var/lib/apt/lists/*

# face_recognition_models imports pkg_resources, removed from setuptools 81+
RUN pip install --no-cache-dir "setuptools<81" dlib==20.0.1 face_recognition==1.3.0
