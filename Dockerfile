FROM python:3.6-slim

RUN mkdir /hearts
RUN mkdir /hearts/data

COPY requirements.txt /hearts/requirements.txt
COPY install_dependencies.sh /hearts/install_dependencies.sh
RUN /hearts/install_dependencies.sh

ENV PYTHONPATH=$PYTHONPATH:/hearts/models/research:/hearts/models/research/slim
