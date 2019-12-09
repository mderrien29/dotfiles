wget http://ftp.gnu.org/gnu/coreutils/coreutils-8.21.tar.xz
tar xvJf coreutils-8.21.tar.xz
cd coreutils-8.21/
wget https://raw.githubusercontent.com/schollz/advcpmv/master/advcpmv-0.5-8.21.patch
patch -p1 -i advcpmv-0.5-8.21.patch
./configure
make
sudo mv ./src/cp /usr/local/bin/cpg
sudo mv ./src/mv /usr/local/bin/mvg
