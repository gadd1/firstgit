#!/bin/sh

##define echo colors
red='\033[1;31m'
green='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${red}>>> Retriving latest FW files${NC}"
sh 6_update_pack.sh
