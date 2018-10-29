#!/usr/bin/env bash
mkdir models_train

cd models_train && wget http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v2_coco_2018_03_29.tar.gz
tar xzf ssd_mobilenet_v2_coco_2018_03_29.tar.gz && rm ssd_mobilenet_v2_coco_2018_03_29.tar.gz

cd ssd_mobilenet_v2_coco_2018_03_29 && mkdir hearts_model && cd hearts_model && \
 wget https://www.dropbox.com/s/5pmdms8u18t6zdt/frozen_inference_graph.pb

cd ../../.. && wget https://www.dropbox.com/s/da1qvqx5kg23qjk/dataset.tar.xz
tar xf dataset.tar.xz && rm dataset.tar.xz
