FROM jupyter/scipy-notebook

# FROM "ubuntu"

# RUN apt-get update && yes | apt-get upgrade
USER root

RUN pip install --upgrade pip

RUN apt-get update && apt-get -y install cmake

RUN mkdir -p /tensorflow/models

RUN apt-get install -y git python-pip

RUN pip install tensorflow

RUN apt-get install -y protobuf-compiler python-pil python-lxml

RUN pip install jupyter

RUN pip install matplotlib

RUN pip install Cython
RUN pip install contextlib2
RUN pip install sklearn
RUN pip install pandas

RUN git clone https://github.com/tensorflow/models.git /tensorflow/models

WORKDIR /tensorflow/models/research

RUN protoc object_detection/protos/*.proto --python_out=.

RUN git clone https://github.com/cocodataset/cocoapi.git
RUN cd cocoapi/PythonAPI
# RUN make install
RUN make cocoapi/PythonAPI
# RUN cd cocoapi/PythonAPI
RUN cp -r pycocotools /tensorflow/models/research/
# RUN cd /tensorflow/models/research
RUN export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

# RUN jupyter notebook --generate-config --allow-root

USER $NB_USER

# RUN echo "c.NotebookApp.password = u'sha1:6a3f528eec40:6e896b6e4828f525a6e20e5411cd1c8075d68619'" >> /root/.jupyter/jupyter_notebook_config.py

# EXPOSE 8888

# CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=/tensorflow/models/research/#object_detection", "--ip='*'", "--port=8888", "--no-browser"]
