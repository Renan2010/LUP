PORTNAME=minetest-master
FILE=master.tar.gz
SRC=https://github.com/minetest/minetest/archive/master.tar.gz

all:
	wget $(SRC)
	tar -xvf $(FILE)
	cd $(PORTNAME) && cmake . -DRUN_IN_PLACE=TRUE && make -j$(nproc)
install:
	cd $(PORTNAME)-$(PORTVERSION) && sudo make install
