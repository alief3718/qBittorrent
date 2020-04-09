./configure --disable-gui CXXFLAGS="-std=c++14"
make -j$(nproc)
sudo make install
ldconfig
export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}
