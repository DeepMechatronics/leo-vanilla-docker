#!/bin/bash

build() {
  echo "Building Leo"
  docker build -f Dockerfile.leo --tag vanilla_leo --no-cache .
}

build
