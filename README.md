This is a setup to run xastir in a Docker container with a vnc interface. 

**The docker-comopose.yml file does not work**

To run the container use

```bash
docker run --rm --security-opt seccomp=unconfined -e RESOLUTION=1920x1080 -p 5900:5900 -p 2023:2023 -p 14580:14580 -v "$PWD/config.xastir:/root/.xastir" xastir:develop
```

Then to connect to the vnc session:

``` bash
vncviewer :0
```

I'm using tigervncviewer
