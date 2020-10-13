# docker-triangulator
https://github.com/maeglin89273/triangulator in a container!

![Docker Pulls](https://img.shields.io/docker/pulls/griefed/triangulator?style=flat-square)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/griefed/triangulator?label=Image%20size&sort=date&style=flat-square)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/griefed/triangulator?label=Docker%20build&style=flat-square)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/griefed/triangulator?label=Docker%20build&style=flat-square)
![GitHub Repo stars](https://img.shields.io/github/stars/Griefed/docker-triangulator?label=GitHub%20Stars&style=social)
![GitHub forks](https://img.shields.io/github/forks/Griefed/docker-triangulator?label=GitHub%20Forks&style=social)

Creates a Container which runs [maeglin89273's](https://github.com/maeglin89273) [triangulator's](https://github.com/maeglin89273/triangulator), a fork of [javierbyte](https://github.com/javierbyte) [triangulator](https://github.com/javierbyte/triangulator), with [httpd:alpine](https://hub.docker.com/_/httpd) as the base image. The original can be seen on https://javier.xyz/triangulator/

# Deploy with docker-compose:
```
  triangulator
    container_name: triangulator
    image: griefed/triangulator
    restart: unless-stopped
    ports:
      - 80:80
```
### Deploy on Rasbperry Pi
Using the Dockerfile, this container can be built and run on a Raspberry Pi, too! I've tested it on a Raspberry Pi 3B+.
Simply put the Dockerfile in a directory called `triangulatorme directory as your docker-compose.yml, edit your docker-compose.yml:
```
  active-github-forks:
    container_name: active-github-forks
    build: ./triangulator
    restart: unless-stopped
    ports:
      - 80:80
```
Then build with:

`docker-compose up -d --build triangulator

![Triangulator](https://raw.githubusercontent.com/javierbyte/triangulator/gh-pages/docs/triangulator.png)
