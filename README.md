# README

## Development

**containers**
build container image
```
docker build . -t eternal44/gamsa
```

run image
```
export INTERNAL_PORT=3000
export EXPOSED_PORT=3001

docker run --name=blog --rm -it -p $EXPOSED_PORT:$INTERNAL_PORT eternal44/gamsa
```

attach to container
```
export BLOG_CONTAINER_ID=$(docker ps -aqf "name=blog")
docker exec -i -t $BLOG_CONTAINER_ID /bin/bash
```

**database**
start SQLite3 client:
```
sqlite3 db/development.sqlite3
```

