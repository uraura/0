FROM alpine:edge

WORKDIR /src
RUN apk --no-cache add ansible

ENTRYPOINT ["ansible"]
CMD ["--version"]
