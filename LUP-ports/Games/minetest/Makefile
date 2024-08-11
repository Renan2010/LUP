PORTNAME=minetest-amd64
NAMEFILE=minetest-master
FILE=master.tar.gz
SRC=https://github.com/minetest/minetest/archive/master.tar.gz

all:
	wget $(SRC)
	tar -xvf $(FILE)
	cd $(NAMEFILE) && cmake . -DRUN_IN_PLACE=TRUE && make -j $(nproc)
install:
	cd $(NAMEFILE) && sudo make install
clean:
	rm -rf $(FILE) $(NAMEFILE)
