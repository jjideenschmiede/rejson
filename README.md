# rejson

We have been looking for a very long time for a way to assign a password to a redisJSON container. We found from [tianon](https://github.com/tianon) and used the whole thing in a slightly modified form for redisJSON.

The whole dockerfile actually just loads the redislabs/rejson image and takes the password variable to assign it to the database.

## How to use it?

```console
docker push jjdevelopment/rejson:latest
```