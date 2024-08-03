PORTNAME=wine-amd64
SRC=https://gitlab.winehq.org/wine/wine.git

all:
	git clone $(SRC) $(PORTNAME) 
	cd $(PORTNAME)-$(PORTVERSION) && ./configure --enable-win64 && make -j $(nproc)
install:
	cd $(PORTNAME)-$(PORTVERSION) && sudo make install
