#!/bin/bash

hostname=`hostname`
#hostname="m1.hdp.com"
sname=`echo $hostname | cut -d"." -f1`
#echo $sname
rootLvm="/dev/mapper/vg_"$sname"-lv_root"
homeLvm="/dev/mapper/vg_"$sname"-lv_home"
echo $rootLvm
echo $homeLvm
#sudo pvs
#echo "-------------"
#sudo vgs
#echo "-------------"
#sudo lvs
#echo "-------------"

#sudo su -
#pwd
#cd ../..
#pwd

#sudo umount $homeLvm
sudo lvremove $homeLvm
sudo lvextend -l 100%FREE $rootLvm
sudo resize2fs $rootLvm

echo "-----------------"
sudo lvs
echo "-----------------"
df -h
echo "LVM Adjustment script completed succesfully......."
