#!/bin/bash

#	Stupid technology of:
#    _____ _               _     _ ______   _       _     
#    / ____| |             (_)   | |  ____| | |     | |    
#   | (___ | |_ _   _ _ __  _  __| | |__ ___| |_ ___| |__  
#    \___ \| __| | | | '_ \| |/ _` |  __/ _ | __/ __| '_ \ 
#    ____) | |_| |_| | |_) | | (_| | | |  __| || (__| | | |
#   |_____/ \__|\__,_| .__/|_|\__,_|_|  \___|\__\___|_| |_|
#                    | |                                   
#                    |_|                                   

iam=$(whoami)
os=$(source /etc/os-release; echo $NAME)
kernel=$(uname -r)
host=$(< /etc/hostname)
sh=$(basename $SHELL)
uptime=$(uptime)


echo -e "    .-.     I'am: $iam@$host"
echo -e "    oo|     Shell: $sh      "
echo -e "   /  \     Kernel: $kernel "
echo -e "  (\__/)    OS: $os         "
echo -e "            Uptime: $uptime "
