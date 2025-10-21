#!/bin/bash
set -e

echo "========================================="
echo "Installing deal.II dependencies and building"
echo "========================================="

# Update package list
echo "Updating package list..."
apt-get update

# Install essential build tools
echo "Installing essential build tools..."
apt-get install -y \
    build-essential \
    wget \
    ca-certificates \
    pkg-config

# Install required and recommended dependencies
echo "Installing deal.II dependencies..."
apt-get install -y \
    libboost-all-dev \
    libblas-dev \
    liblapack-dev \
    libopenmpi-dev \
    openmpi-bin \
    libtbb-dev \
    zlib1g-dev \
    libsuitesparse-dev \
    libmetis-dev \
    libhdf5-dev \
    libhdf5-openmpi-dev \
    libarpack2-dev \
    libp4est-dev \
    libgsl-dev \
    libbz2-dev
