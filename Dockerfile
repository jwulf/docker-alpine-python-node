FROM mhart/alpine-node:12.4.0

# If you have native dependencies, add these extra tools
# RUN apk add --no-cache make gcc g++ python

ENV TERM=xterm

RUN apk add --update --no-cache python \
    python-dev \
    py-pip \
    yarn \
    git \
    nano \
    openssh-client \
 && rm -rf /var/cache/apk/* \
 && yarn config set "strict-ssl" false \
 && pip install awscli
