# Initialize Terraform

``` 
#  docker run --privileged=true -it -v $PWD/:/data --workdir /data hashicorp/terraform:light init
```

# Get Terraform config

```
# docker run --privileged=true -it -v $PWD/:/data --workdir /data hashicorp/terraform:light get /data/
```

# Plan deployment

```
# docker run --privileged=true -it -v $PWD/:/data --workdir /data hashicorp/terraform:light plan /data
```

# Deploy (apply) 

```
# docker run --privileged=true -it -v $PWD/:/data --workdir /data hashicorp/terraform:light apply /data/
```
