FROM ghost:0.11.0
MAINTAINER Michael Williams <michael.williams@enspiral.com>

RUN \
  npm install --production ahdinosaur/ghost-s3-storage-adapter#does-not-inherit-bug && \
  mkdir -p $GHOST_CONTENT/storage && \
  mv node_modules/ghost-s3-storage-adapter $GHOST_SOURCE/core/server/storage/ghost-s3 && \
  npm cache clean && \
  rm -rf /tmp/npm* && \
  ln -s $(pwd) $(pwd)/node_modules/ghost

COPY config.js $GHOST_CONTENT
