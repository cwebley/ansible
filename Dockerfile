FROM ubuntu:focal AS base
ARG TAGS
WORKDIR /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential sudo && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

# TODO having issue a user to to work because of a required sudo password
# but this is not an issue i need to fix in this test playbook

# RUN addgroup --gid 1000 cwebley
# RUN adduser --gecos cwebley --uid 1000 --gid 1000 --disabled-password cwebley
# user cwebley
# workdir /home/cwebley
# COPY --chown=cwebley:cwebley . .

COPY . .

CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]

