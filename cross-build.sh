mkdir /tmp/htop-build && cd /tmp/htop-build
apk add --update gcc make musl-dev ncurses ncurses-dev ncurses-static
wget -O htop.tar.xz https://github.com/htop-dev/htop/releases/download/3.3.0/htop-3.3.0.tar.xz && tar -xvf htop.tar.xz
cd htop-*
./configure CFLAGS="-Os" --enable-static --disable-dependency-tracking
make -j$(nproc)
cp htop /hostfs/htop