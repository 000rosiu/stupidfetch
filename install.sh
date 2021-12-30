#!/bin/bash

# Stuid installer of Stupidfetch :-)

os=$(source /etc/os-release; echo $NAME)
fname="stupidfetch"

install_norm() {
    inpath="$HOME"
    scname="$fname.sh"
    fpath="$inpath/$scname"
    
    git clone https://github.com/awitech/$stupidfetch.git
    cd $fname
    echo -e "\033[0;34m:: \033[0mLoading installation script of stupidfetch..."
    cp $scname $fpath
    chmod +x $fpath
    sudo ln -s $fpath /usr/bin/$fname
    echo -e "\033[1;32m:: \033[0mInstallating of STUPIDFETCH completed."
    echo -e "Installed STUPIDFETCH in: \033[1;36m$(which $fname)"
    cd ..
    rm -rf $fname
}

if [ "$os" == "Arch Linux" ]
    then
        echo "Arch Linux not supported in this time! Because i-m very lazy and i don-t like pacman to create the installer."
    else
        echo "Installing stupidfetch..."
        install_norm
fi
