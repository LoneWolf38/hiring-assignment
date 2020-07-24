## Running the Docker container

```
 $ cd /to/the/Dockerfile/dir
 $ docker build -t ffmpegd:1.0 .
 $ docker run --name ffmpegd -d ffmpegd:1.0
 $ docker exec -it ffmpegd /bin/bash 

```