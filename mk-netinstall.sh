#!/bin/bash
NETDIR=rocky
TFTPBOOTDIR=tftpboot
MOUNTDIR=/mnt/netinstall
SOURCEDIR=.


UPDATEINDEX=update-index-squeeze-amd64

mkdir -p $MOUNTDIR 
mount *.iso $MOUNTDIR -o loop
mkdir -p $NETDIR
mkdir -p $NETDIR/tftpboot
mkdir -p $NETDIR/var/www/rocky
cp $SOURCEDIR/netboot/* $NETDIR/tftpboot/ -r
cp $SOURCEDIR/preseed.cfg  $NETDIR/var/www/rocky/ -r
cp $MOUNTDIR/install.amd/net/initrd.gz $NETDIR/tftpboot/rocky-installer/amd64/initrd.gz
cp $MOUNTDIR/dists $NETDIR/var/www/rocky/ -r 
cp $MOUNTDIR/pool $NETDIR/var/www/rocky/ -r
cp $SOURCEDIR/net-installer-udeb $NETDIR/var/www/rocky/pool/main -r
cd $UPDATEINDEX
sh create-new-packages-release-Fix-md5.sh 

#sh  $UPDATEINDEX/create-new-packages-release-Fix-md5.sh 




