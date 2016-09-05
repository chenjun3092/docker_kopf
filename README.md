# docker_kopf
Overkill container !! :)
One basic container to manage various ES clusters whatever their versions

## How to run it
* clone the repo
```git clone https://github.com/labynocle/docker_kopf ```
* build the image
```cd docker_kopf && docker build -t kopf .```
* run it
```docker run -d -p 80:80 kopf```
* test it
```curl -v http://127.0.0.1:80```

## Docker Hub
you can find this image on Docker Hub: https://hub.docker.com/r/labynocle/docker_kopf/
