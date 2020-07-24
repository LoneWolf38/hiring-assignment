## Running the Docker container

```
 $ cd /to/the/Dockerfile/dir
 $ docker build -t ffmpegD:1.0 .
 $ docker run --name container exec -it /bin/bash ffmpegD:1.0
