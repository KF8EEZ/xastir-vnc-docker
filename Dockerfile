FROM carlonluca/vnc-desktop:jammy-xfce

RUN apt update
RUN apt install -y \
    automake \
    ax25-apps \
    ax25-tools \
    libax25 \
    libax25-dev \
    libpcre3-dev \
    gpsman \
    gpsmanshp \
    libdb-dev \
    libshp-dev \
    build-essential \
    graphicsmagick \
    libgraphicsmagick-dev \
    libxpm-dev \
    libmotif-dev \
    libx11-dev \
    git \
    shapelib \
    festival \
    festival-dev \
    libproj-dev \
    libgeotiff-dev

RUN mkdir -p /opt/XASTIR
WORKDIR /opt/XASTIR
RUN git clone https://github.com/Xastir/Xastir.git
WORKDIR /opt/XASTIR/Xastir
RUN ./bootstrap.sh
RUN ./configure
RUN make -j12 && make install
