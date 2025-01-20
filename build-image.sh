
# Warning: just for development phase, will be move to github action in future.

# get version from package.json
version=$(node -p "require('./package.json').version")

# build main image
docker buildx build --platform linux/amd64,linux/arm64 --push -t docker.io/nightwhite634/laf-runtime:$version -f Dockerfile .

# build init image
docker buildx build --platform linux/amd64,linux/arm64 --push -t docker.io/nightwhite634/laf-runtime-init:$version -f Dockerfile.init .