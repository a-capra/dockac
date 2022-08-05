# dockac
Experiment with Docker Hub

Build this image from scratch
```
git clone git@github.com:a-capra/dockac.git
cd dockac
docker build -t dockac .
```

Tag it
```
docker tag dockac:latest acapra/test-ac:latest
```

Just pull my test
```
docker pull acapra/test-ac:pyroodora
docker run -it --rm acapra/test-ac:pyroodora
```
