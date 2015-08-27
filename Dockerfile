FROM ubuntu:trusty
RUN apt-get update
RUN apt-get install unzip
RUN apt-get install -y curl

# Define Joomla version and expected SHA1 signature
ENV JOOMLA_VERSION 3.4.3
ENV JOOMLA_SHA1 cd35ed61029d2ed0dc38cc70073944786bba7979

# @TODO - the files aren't exposed to nginx
# Download package and extract to web volume

#RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip \
#	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - \
#	&& unzip joomla.zip -d ./public_html \
