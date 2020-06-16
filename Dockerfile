FROM mhart/alpine-node:12.4.0

# If you have native dependencies, add these extra tools
# RUN apk add --no-cache make gcc g++ python

ENV TERM=xterm

COPY kubefwd /
RUN apk add --update --no-cache python \
    python-dev \
    py-pip \
    yarn \
    git \
    nano \
    openssh-client \
    curl \
    build-base gcc abuild binutils binutils-doc gcc-doc \
    cmake cmake-doc extra-cmake-modules extra-cmake-modules-doc \
 && rm -rf /var/cache/apk/* \
 && yarn config set "strict-ssl" false \
 && pip install awscli \
 && npm install -g pino-pretty
