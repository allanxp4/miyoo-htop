FROM arm32v7/alpine:3.19.1
WORKDIR /app
RUN apk add --update gcc make musl-dev ncurses ncurses-dev ncurses-static
RUN wget -O htop.tar.xz https://github.com/htop-dev/htop/releases/download/3.3.0/htop-3.3.0.tar.xz && tar -xvf htop.tar.xz
WORKDIR /app/htop-3.3.0
RUN ./configure --enable-static --disable-dependency-tracking
RUN make -j$(nproc)
