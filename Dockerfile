FROM mhart/alpine-node

# If you have native dependencies, add these extra tools
# RUN apk add --no-cache make gcc g++ python

export TERM=xterm

RUN apk add --update --no-cache python \
    python-dev \
    py-pip \
    yarn \
    git \
    nano \
    openssh-client \
 && rm -rf /var/cache/apk/* \
 && pip install awscli 
