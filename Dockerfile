FROM ghost
MAINTAINER Michael Williams <michael.williams@enspiral.com>

RUN \
  npm install ghost-s3-storage-adapter && \
  mkdir -p $GHOST_CONTENT/storage/ghost-s3/index.js
COPY ghost-s3.js $GHOST_CONTENT/storage/ghost-s3/index.js
COPY config.js $GHOST_CONTENT
