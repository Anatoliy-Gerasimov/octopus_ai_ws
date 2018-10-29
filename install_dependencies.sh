#!/usr/bin/env bash

# install cmake
apt-get update
apt-get -y install cmake git wget unzip

cd /hearts
# install all python dependencies
pip install -r requirements.txt

# download object detection API
git clone https://github.com/tensorflow/models

# download and install cocoapi
git clone https://github.com/cocodataset/cocoapi
cd cocoapi/PythonAPI
make
cp -r pycocotools ../../models/research/

cd ../../models/research/

# install protobuff compiler for building object detection API
wget -O protobuf.zip https://github.com/google/protobuf/releases/download/v3.0.0/protoc-3.0.0-linux-x86_64.zip
unzip protobuf.zip

# build the API
./bin/protoc object_detection/protos/*.proto --python_out=.

PYTHONPATH=$PYTHONPATH:$PWD:$PWD/slim python object_detection/builders/model_builder_test.py