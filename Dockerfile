FROM ubuntu

LABEL org.opencontainers.image.authors="p23687@fh-hagenberg.at" \
	org.opencontainers.image.description="Simple Ubuntu image for HYP1 classes" \
	org.opencontainers.image.source="https://github.com/knittl/hyp1-docker" \
	org.opencontainers.image.url="https://github.com/knittl/hyp1-docker"

ENV LANG=C.UTF-8
ENV SHELL=/bin/bash
RUN useradd -ms /bin/bash --no-log-init -c 'HYP1 user account' student \
	&& sed -i '/^#force_color_prompt=yes$/s/^#//' /home/student/.bashrc
WORKDIR /home/student

RUN yes|unminimize
# RUN apt update && apt install -y git
RUN apt update \
	&& apt install -y man-db less nano psmisc curl \
	&& rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

USER student
