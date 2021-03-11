# Load from source
FROM redislabs/rejson:latest

# Set new password
ENV REDIS_PASSWORD default

# Set password to redis via shell
CMD ["sh", "-c", "exec redis-server --requirepass \"$REDIS_PASSWORD\" --appendonly yes"]