# Octopus AI workshops

## Object detection workshop

At the workshop we will solve a task of detecting a "heart" gesture on a photo using Tensorflow object detection API. We'll recover methods that were applied to a similar task in the past. Also, we'll get a basic understanding of neural networks and how they are applied to the object detection, using one of our projects as the example. Finally, we'll go through all the steps, starting with the search and markup of the dataset, finishing with the preparation of the model for an application.

## Dimension reduction for image clustering using convolutional autoencoder

On the workshop we will describe the solution for the task of the dimension reduction of the image dataset for further clustering using convolutional autoencoder. The program includes the following steps:
1. Building and training autoencoder model (python3, keras).
2. Dimension reduction of real image dataset via autoencoder model.
3. Clustering of image dataset.
4. Comparing precision of convolutional neural network trained on original dataset with another feed-forward neural network trained on compressed dataset.
5. Image dataset clustering (python3, kmeans).
Most clustering algorithms require the linear dimension of the dataset. In the case of images, we are dealing with a 3-dimension matrix (height, width, 3 rgb values). The convolutional autoconcoder allows to reduce the image dataset to 1-ddimensional form. Correct approach for selection of the size of the bottleneck (the dimension of the compressed data) allows to decrease loss of precision.

### CPU vs GPU
This branch of the repository is intended for CPU only use. If you have a Nvidia GPU with nvidia-docker installed (with propper docker-compose support) then checkout to branch `gpu` and follow instructions there


### Running the workshop

- Clone this repository to your local machine
- Download the data. Make sure you have `xz-utils` installed. Then run `./download_data.sh`.  
- Pull docker container `docker pull ymiq/octopusai_ws:latest` Or you can build it yourself by running `./build.sh`  
- Run `docker-compose up`
- Wait till everything loads and go to a URL that is displayed by the jupyter notebook
- Run all cells `test_notebook.ipynb`


### Запуск докер контейнера с примерами

- Склонируйте этот репозиторий на вашу машину.
- Загрузите данные командой `./download_data.sh` . Для этого у вас должны быть установлены `xz-utils`.
- Скачайте docker image `docker pull ymiq/octopusai_ws:latest` или можно сбилдить его локально из исходника скриптом `./build.sh`
- Запустите `docker-compose up`
- Подождите немного и перейдите по URL который увидите в jupyter-notebook.
- Запустите все ячейки `test_notebook.ipynb`

### Запуск под Windows

Для запуска под Windows у вас должны быть установлены Docker и Docker Compose.
А также `git bash`, с утилитами `xz`, `wget`
#### Установка утилит
Утилиты нужно скачать тут [xz](https://tukaani.org/xz/) и [wget](https://eternallybored.org/misc/wget/).
И скопировать `.exe` файлы в папку `C:\Program Files\Git\mingw64\bin`.
Затем можно запускать скрипт `./download_data.sh`.