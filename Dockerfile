# Load from reccource
FROM redislabs/rejson:latest as rejson

# Config enviroment variables
# Set password
ENV REDIS_PASSWORD default

# Start Server and set module, password & appendonly
CMD redis-server --loadmodule /usr/lib/redis/modules/rejson.so --requirepass $REDIS_PASSWORD --appendonly yes