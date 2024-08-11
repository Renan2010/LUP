PORTNAME=nano-amd64
NAMEFILE=nano-8.1
FILE=nano-8.1.tar.xz
SRC=https://www.nano-editor.org/dist/v8/nano-8.1.tar.xz

all:
	wget $(SRC)
	tar -xvJf $(FILE)
	cd $(NAMEFILE) && ./configure && make -j $(nproc)
	@clear
	@echo "==> The $(NAMEFILE) is already successfully compiled"
install:
	cd $(NAMEFILE) && sudo make install
clean:
	@echo "==> Clearing $(FILE) and $(NAMEFILE)"
	@rm -rf $(FILE) $(NAMEFILE)
