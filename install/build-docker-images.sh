echo "${_group}Creating volumes for persistent storage ..."

mkdir -p ./db/{sentry-clickhouse,sentry-data,sentry-kafka,sentry-postgres,sentry-redis,sentry-symbolicator}

echo "Created $(docker volume create --driver local \
  --opt type=none \
  --opt device=$(pwd)/db/sentry-clickhouse \
  --opt o=bind \
  --name=sentry-clickhouse)."

echo "Created $(docker volume create --driver local \
  --opt type=none \
  --opt device=$(pwd)/db/sentry-data \
  --opt o=bind \
  --name=sentry-data)."

echo "Created $(docker volume create --driver local \
  --opt type=none \
  --opt device=$(pwd)/db/sentry-kafka \
  --opt o=bind \
  --name=sentry-kafka)."

echo "Created $(docker volume create --driver local \
  --opt type=none \
  --opt device=$(pwd)/db/sentry-postgres \
  --opt o=bind \
  --name=sentry-postgres)."

echo "Created $(docker volume create --driver local \
  --opt type=none \
  --opt device=$(pwd)/db/sentry-redis \
  --opt o=bind \
  --name=sentry-redis)."

echo "Created $(docker volume create --driver local \
  --opt type=none \
  --opt device=$(pwd)/db/sentry-symbolicator \
  --opt o=bind \
  --name=sentry-symbolicator)."

echo "${_endgroup}"