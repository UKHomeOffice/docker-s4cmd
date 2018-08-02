## What is Docker S4CMD ##

Original credit to capkopper/s4cmd - optimised this for running as a one off or within a CI/CD environment.

S4cmd is a command-line utility for accessing Amazon S3, inspired by s3cmd.

We have used s3cmd heavily for a number of scripted, data-intensive applications. However as the need for a variety of small improvements arose, we created our own implementation, s4cmd. It is intended as an alternative to s3cmd for enhanced performance and for large files, and with a number of additional features and fixes that we have found useful.

It strives to be compatible with the most common usage scenarios for s3cmd. It does not offer exact drop-in compatibility, due to a number of corner cases where different behavior seems preferable, or for bugfixes.

### Dockerfile ##

This Docker image is based on the official Alpine:3.2 base image.

### Required AWS ENV Credentials ##

You will require some form of IAM rule / user account with keys set up in order to run S4CMD
You can parse this in as part of an `.env` file when running the container.

The key ENV's are:

```
S3_ACCESS_KEY=abc
S3_SECRET_KEY=abc+123
```

#### How to run this image ##

All the `s4cmd` commands are documented well on their repo found[here](https://github.com/bloomreach/s4cmd)

To pull the image for the first time:

```
docker pull xibitdigital/docker-s4cmd
```

e.g. Running an s4cmd command:

```
docker run --env-file=myfile.env xibitdigital/docker-s4cmd get s3://[bucket]/[file]
```
