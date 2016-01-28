#!/bin/sh

##define echo colors
red='\033[1;31m'
green='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${red}>>> Retriving latest FW files${NC}"
sh 6_update_pack.sh
echo -e "${red}>>> Packing rootfs${NC}"
sh 7_pack_rootfs.sh
echo -e "${red}>>> Building ISO${NC}"
sh 8_generate_iso.sh
echo -e "${red}>>> Copying ISO${NC}"
cp mlnx_fw.iso /.autodirect/LIT/OOB/FW_GA/mlnx_fw.iso

echo ""
echo -e "${green}>>> ISO avilable @ /.autodirect/LIT/OOB/FW_GA/mlnx_fw.iso${NC}"
echo ""
