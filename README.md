# Octopus AI Object detection workshop

At the workshop we will solve a task of detecting a "heart" gesture on a photo using Tensorflow object detection API. We'll recover methods that were applied to a similar task in the past. Also, we'll get a basic understanding of neural networks and how they are applied to the object detection, using one of our projects as the example. Finally, we'll go through all the steps, starting with the search and markup of the dataset, finishing with the preparation of the model for an application.

## CPU vs GPU
This branch of the repository is intended for CPU only use. If you have a Nvidia GPU with nvidia-docker installed (with propper docker-compose support) then checkout to branch `gpu` and follow instructions there


## Running the workshop

- Clone this repository to your local machine
- Download the data. Make sure you have `xz-utils` installed. Then run `./download_data.sh`.  
- Pull docker container `docker pull ymiq/octopusai_ws:latest` Or you can build it yourself by running `./build.sh`  
- Run `docker-compose up`
- Wait till everything loads and go to a URL that is displayed by the jupyter notebook 