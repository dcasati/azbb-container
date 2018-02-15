FROM ubuntu

RUN apt-get update \
    && apt-get install -y apt-transport-https

RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ xenial main" >> /etc/apt/sources.list.d/azure-cli.list
RUN apt-key adv --keyserver packages.microsoft.com --recv-keys 52E16F86FEE04B979B07E28DB02C46DF417A0893 \    
    && apt-get update \
    && apt-get -y install azure-cli curl

# This will update Node on Ubuntu
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs

RUN npm install -g @mspnp/azure-building-blocks