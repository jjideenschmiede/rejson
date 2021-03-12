# Load from source
FROM redislabs/rejson:latest

# Set new password
ENV REDIS_PASSWORD default

# Load json modules
RUN redis-server --loadmodule ./target/release/librejson.dylib

# Set password to redis via shell
RUN redis-server --requirepass $REDIS_PASSWORD --appendonly yes