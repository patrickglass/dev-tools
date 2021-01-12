# dev-tools

Container Image with common development and debugging tools

## Quickstart

You can spin up this image with docker with:

```sh
docker run -it --rm patrickglass/dev-tools
```

To spin up an interactive container which you can use to interact with a
kubernetes cluster you can run the following. This can assist in checking
certain apects of your deployment when your production images do not have.

```sh
kubectl run dev-tools -i --tty --image=patrickglass/dev-tools --restart=Never --rm
```

## Building the Image

To build a new updated version:

```sh
make build

make push
```
