https://akhilsharmaa.medium.com/ubuntu-gui-inside-docker-vnc-server-setup-f601687ec66d

https://bugfreeblog.duckdns.org/2023/02/docker-vnc-desktop-amd64-arm64.html

https://forums.docker.com/t/solved-docker-vnc-grey-screen-only-with-ubuntu-22-04-image/140108

docker run --rm --security-opt seccomp=unconfined -e RESOLUTION=1920x1080 -p 5900:5900 carlonluca/vnc-desktop:jammy-xfce


docker run --rm --security-opt seccomp=unconfined -e RESOLUTION=1920x1080 -p 5900:5900 -p 2023:2023 -p 14580:14580 -v "$PWD/config.xastir:/root/.xastir" xastir:develop
