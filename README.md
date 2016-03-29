# kubectl command line tool for interacting with a Kubernetes cluster

# Summary

- A Docker build for the kubectl command line tool, used to control a Kubernetes cluster via its API. For more info, see [kubectl](https://github.com/kubernetes/kubernetes/blob/master/docs/user-guide/kubectl/kubectl.md)
- Built from [Alpine + glibc base image](https://hub.docker.com/r/danielwhatmuff/alpine-glibc-docker/)

# Requirements

- Docker :whale: - if you are on Mac, checkout the [Docker Toolbox](http://docs.docker.com/mac/step_one/)

# To build the Docker image

- Build the image using docker
```bash
$ docker build -t kubectl .
```
- Run the kubectl container, mounting any local cluster config as a volume
```bash
$ docker run -v $(pwd):/root/ --rm kubectl kubectl --kubeconfig=/root/clusters/<cluster-name>/kubeconfig get nodes
```

# Alternatively, you can use the Docker Hub automated build

[![](https://badge.imagelayers.io/danielwhatmuff/kubectl:latest.svg)](https://imagelayers.io/?images=danielwhatmuff/kubectl:latest 'Get your own badge on imagelayers.io')

```bash
$ docker pull danielwhatmuff/kubectl
```

### Contributing
File issues in GitHub to report bugs or issue a pull request to contribute.
