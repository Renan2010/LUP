#!/bin/sh
search_in_ports() {
    local package_name="$1"
    
    cd LUP-ports/ || { echo "Unable to access LUP-ports directory"; exit 1; }
    
    if tree -L 2 | grep -q "$package_name"; then
        echo "Package "$package_name" was found."
    else
        echo "Package "$package_name" was not found."
    fi

}
# How to use Package name
if [ $# -ne 1 ]; then
    echo "Use: $0 <Package name>"
    exit 1
fi
# Execute with arguments
search_in_ports "$1"