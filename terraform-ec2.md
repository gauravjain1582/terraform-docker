

``` 
#  docker run --privileged=true -it -v $PWD/:/data --workdir /data hashicorp/terraform:light init
```

```
# docker run --privileged=true -it -v $PWD/:/data --workdir /data hashicorp/terraform:light get /data/
```

```
# docker run --privileged=true -it -v $PWD/:/data --workdir /data hashicorp/terraform:light plan /data
```

```
# docker run --privileged=true -it -v $PWD/:/data --workdir /data hashicorp/terraform:light apply /data/
```
