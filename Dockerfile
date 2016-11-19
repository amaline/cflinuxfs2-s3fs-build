FROM cloudfoundry/cflinuxfs2

RUN sudo apt-get install automake autotools-dev g++ git libcurl4-gnutls-dev libfuse-dev libssl-dev libxml2-dev make pkg-config

RUN git clone https://github.com/s3fs-fuse/s3fs-fuse.git
WORKDIR s3fs-fuse
RUN ./autogen.sh
RUN ./configure
RUN make
RUN sudo make install