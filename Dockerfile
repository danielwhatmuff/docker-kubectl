FROM danielwhatmuff/alpine-glibc-docker

MAINTAINER "Daniel Whatmuff" <danielwhatmuff@gmail.com>

ENV KUBECTL_VERSION 1.2.0

RUN apk-install curl ca-certificates && \
    curl -s -L https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/bin/kubectl && \
    chmod +x /usr/bin/kubectl && \
    kubectl version -c

CMD ["kubectl"]
