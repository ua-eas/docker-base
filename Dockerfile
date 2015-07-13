FROM ubuntu:14.04

# File Author / Maintainer
MAINTAINER Josh Shaloo <shaloo@email.arizona.edu>

# Install.
RUN \
  apt-get update && apt-get install -y \
    git \
    unzip \
    vim \ 
    wget \
    ruby \
    ruby-dev \
  rm -rf /var/lib/apt/lists/* 
  
RUN rm /etc/localtime 
RUN ln -s /usr/share/zoneinfo/America/Phoenix /etc/localtime
      
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
