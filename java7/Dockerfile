FROM bensentropy/debian

MAINTAINER Ben Olsen "me@bensentorpy.com"

RUN apt-get update && \
	apt-get install -y openjdk-7-jre-headless && \
	apt-get clean

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

# Define default command
CMD ["bash"]