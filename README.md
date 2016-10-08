# docker-ghost-aws

uses [`official ghost image`](https://hub.docker.com/_/ghost/) and [`ghost-s3-storage-adapter`](https://github.com/aorcsik/ghost-s3-storage-adapter).

setup for usage on Amazon Web Services.

## environment variables

```
IAM_ACCESS_KEY
IAM_SECRET_KEY
NODE_ENV
RDS_DB_NAME
RDS_HOSTNAME
RDS_PORT
RDS_USERNAME
RDS_PASSWORD
S3_BUCKET_NAME
S3_BUCKET_REGION
SMTP_SERVICENAME
SMTP_USERNAME
SMTP_PASSWORD
URL
```

## how to

### install

install `docker`, then

```shell
git clone https://github.com/ahdinosaur/docker-ghost-aws
```

### build

```shell
docker build -t ahdinosaur/docker-ghost-aws .
```

### run

```shell
docker run --rm ahdinosaur/docker-ghost-aws
```

### publish

```shell
docker push ahdinosaur/docker-ghost-aws
```
