FROM fedora:29

WORKDIR /data

# Install what you need
RUN dnf -y update && dnf -y install git-all npm && dnf clean all

# Install some more
RUN npm install yarn -g

# Confirm versions
RUN git --version && node -v && npm -v && yarn -v

VOLUME /data
