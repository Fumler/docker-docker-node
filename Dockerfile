FROM mhart/alpine-node:10
FROM docker:18.09

COPY --from=0 /usr/bin/node /usr/bin/
COPY --from=0 /usr/local/bin/yarn /usr/bin/
RUN apk add --no-cache \
		git \
		openssh-client \
    curl \
    bash \
    libstdc++ \
    binutils && \
    strip /usr/bin/node