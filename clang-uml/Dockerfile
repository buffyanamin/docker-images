FROM ubuntu:kinetic

RUN apt update && \
	apt install -y software-properties-common && \
	add-apt-repository ppa:bkryza/clang-uml && \
	apt update && \
	apt install -y clang-uml

RUN apt install -y cmake make ninja-build git build-essential libboost-all-dev
RUN apt install -y libssl-dev openjdk-17-jre graphviz
COPY plantuml.jar /
COPY entry.sh /

WORKDIR /root

CMD ["/entry.sh"]
