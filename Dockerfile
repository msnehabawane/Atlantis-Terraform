FROM ghcr.io/runatlantis/atlantis:latest

USER root

RUN apk add --no-cache aws-cli

RUN mkdir -p /home/atlantis/.aws

RUN touch /home/atlantis/.aws/credentials

RUN chown -R atlantis:atlantis /home/atlantis/

USER atlantis
