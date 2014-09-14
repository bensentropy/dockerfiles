FROM bensentropy/java7

MAINTAINER Ben Olsen "me@bensentorpy.com"

# Install and configure Neo4j 2.1.3

RUN cd /tmp && wget http://dist.neo4j.org/neo4j-community-2.1.3-unix.tar.gz
RUN cd /tmp && \
	tar xzvf neo4j-community-2.1.3-unix.tar.gz && \
    mv /tmp/neo4j-community-2.1.3/ /neo4j && \
    sed -e 's/^org.neo4j.server.database.location=.*$/org.neo4j.server.database.location=\/data\/graph.db/' -i /neo4j/conf/neo4j-server.properties && \
    sed -e 's/^#org.neo4j.server.webserver.address=.*$/org.neo4j.server.webserver.address=0.0.0.0/' -i /neo4j/conf/neo4j-server.properties && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/data"]

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64


# Expose listen port
EXPOSE 7474

CMD ulimit -n 65536; /neo4j/bin/neo4j console

