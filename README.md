# git_learning

Notes on git usage

## Using the docker image

* Use the `girishpasupathy/git_with_bash` image for trying out various git commands.

```Bash
# creates a local volume
docker volume create git_data

docker container run -it --rm --hostname git-box -v git_data:/data girishpasupathy/git_with_bash:latest
```

Even if the container goes away, the data is persisted in the volume.
