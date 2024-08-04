# Function to display the confirmation prompt
confirm() {
	while true; do
		read -rp "Do you want to continue? [y/N]: " yn
		case $yn in
			[Yy]* ) return 0;;  # If the user responds with 'y' or 'Y', return 0 (true)
			[Nn]* | "" ) return 1;;  # If the user responds with 'n' or 'N' or presses Enter without typing anything, return 1 (false)
			* ) echo "Please answer with 'y' or 'n'.";;  # For any other response, prompt again
		esac
	done
}
# Script to install ports
install_ports() {
	local install="$1"

	cd LUP-ports/ || { echo "Unable to compile and install this $package"; exit 1; }
	
	cd $install/  || { echo "Unable to find $install"; exit 1; }
	
	make || { echo "make failed for install $install"; exit 1; }
	
	echo "==> Installing the $install application please enter the sudo password"
	
	if confirm; then
		sudo make install
	else
		make clean
		echo "Installation cancelled."
	fi
}
# when an invalid argument is passed
if [ $# -ne 1 ]; then
	echo "Use: $0 <category/package>"
	exit 1
fi
# check if there is a valid argument
install_ports "$1"