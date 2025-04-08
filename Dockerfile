# Base image
FROM lscr.io/linuxserver/webtop:ubuntu-kde
 
# Set environment variables to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive
 
# Update package lists and install essential debugging tools and OpenJDK 11
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        iputils-ping \
        curl \
        dnsutils \
        traceroute \
        vim \
        wget \
        net-tools \
        postgresql-client \
        influxdb-client \
        redis-tools \
        tcpdump \
        iperf3 \
        telnet \
        mysql-client \
        gnupg \
        ca-certificates \
        openjdk-11-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
 
# Set JAVA_HOME environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH="${JAVA_HOME}/bin:${PATH}"
 
# Download and extract Kafka
RUN wget https://dlcdn.apache.org/kafka/3.8.1/kafka_2.12-3.8.1.tgz && \
    tar -xvf kafka_2.12-3.8.1.tgz && \
    mv kafka_2.12-3.8.1 /opt/kafka && \
    rm kafka_2.12-3.8.1.tgz
 
# Add Kafka binaries to PATH
ENV PATH="${PATH}:/opt/kafka/bin"
 
# Install MongoDB shell (mongosh)
RUN wget https://downloads.mongodb.com/compass/mongodb-mongosh_2.4.2_amd64.deb && \
    dpkg -i mongodb-mongosh_2.4.2_amd64.deb || apt-get install -f -y && \
    rm mongodb-mongosh_2.4.2_amd64.deb
