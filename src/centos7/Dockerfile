FROM centos:7

WORKDIR /data

# Install what you need
RUN curl --silent --location https://rpm.nodesource.com/setup_10.x | bash - && yum install git-core nodejs -y && yum clean all

# Install some more
RUN npm install yarn -g

# Confirm versions
RUN git --version && node -v && npm -v && yarn -v

VOLUME /data




