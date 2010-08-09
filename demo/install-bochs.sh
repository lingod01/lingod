#wget http://sourceforge.net/projects/bochs/files/bochs/2.3.7/bochs-2.3.7.tar.gz/download
#tar xvzf bochs-2.3.7.tar.gz
#apt-get install libx11-dev xserver-xorg-dev xorg-dev bison++ bochs-x  build-essential
sed -i '/using namespace/ a using namespace __gnu_cxx;' bochs-2.3.7\/bx_debug\/symbols.cc
cd bochs-2.3.7
./configure --enable-debugger --enable-disasm
make 
make install 
