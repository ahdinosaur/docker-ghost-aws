FROM ghost
MAINTAINER Michael Williams <michael.williams@enspiral.com>

RUN \
  npm install --production ghost-s3-storage-adapter && \
  mkdir -p $GHOST_CONTENT/storage && \
  mv node_modules/ghost-s3-storage-adapter $GHOST_SOURCE/core/server/storage/ghost-s3 && \
  npm cache clean && \
  rm -rf /tmp/npm*

COPY config.js $GHOST_CONTENT
