# emod-dockerized-se
EMOD dockerized container for testing with Microsoft Science Engine

The default docker command runs the first simulation in `/examples` (`/examples/Experiment1/Sim1`)


## Getting the docker image

**Option 1 - pull the image from IDM Artifactory server:**

```bash
docker pull docker-production.packages.idmod.org/user/jsteinkraus/emod-dockerized-se:1.0
```

**Option 2 - build the image locally:**

`git clone` this repo, then do
```bash
docker build --tag docker-production.packages.idmod.org/user/jsteinkraus/emod-dockerized-se:1.0 .
```
