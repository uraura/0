FROM alpine:3

WORKDIR /src
RUN apk --no-cache add ansible
RUN ansible-galaxy collection install community.general

ENTRYPOINT ["ansible"]
CMD ["--help"]
