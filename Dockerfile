FROM mhart/alpine-node

# If you have native dependencies, add these extra tools
# RUN apk add --no-cache make gcc g++ python

RUN apk add --update --no-cache python \
    python-dev \
    py-pip \
    yarn \
    git \
    ssh \
 && rm -rf /var/cache/apk/* \
 && pip install awscli 
