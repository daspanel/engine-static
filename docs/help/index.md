
# Usage


### Get
```shell
$ docker pull daspanel/engine-static:latest
```

### Run
```shell
$ docker run -e DASPANEL_MASTER_EMAIL=my@email.com --name=my-engine-static daspanel/engine-static:latest
```

### Stop
```shell
$ docker stop my-engine-static
```

### Update image
```shell
$ docker stop my-engine-static
$ docker pull daspanel/engine-static:latest
$ docker run -e DASPANEL_MASTER_EMAIL=my@email.com --name=my-engine-static daspanel/engine-static:latest
```

# Tips
