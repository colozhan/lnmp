#!/bin/bash
#url         :https://lnmp.coloz.net
#git         :https://github.com/colozhan/lnmp
#version     :Beta0.1
#mail        :colozhan@gmail.com
#time        :
#system      :CentOS/RHEL


#scripts information
#echo "================================================"
#echo "=========== Welcome run scripts ================"
echo "url         :https://lnmp.coloz.net"
echo "git         :https://github.com/colozhan/lnmp"
echo "version     :Beta0.1"
echo "mail        :colozhan@gmail.com"
echo "system      :CentOS/RHEL"
#echo "================================================="
echo ""
echo ""
echo ""

if [ "$(id -u)" -ne "0" ]; then
        echo "Please use the root user to execute the script"
        exit
else
        echo "Check Root Passed"
fi
echo ""
echo ""
echo ""

#Uninstall the current LNMP
#echo "=========================="
echo "Uninstall the current LNMP"
#echo "=========================="
echo "stop apache"&& service httpd stop && chkconfig --del httpd
echo "stop nginx" && service nginx stop && chkconfig --del nginx
echo ""
echo ""
echo ""

#disabled selinux
#/*if [ "$(grep SELINUX= /etc/selinux/config  | grep -v "#" | cut -d= -f2)" == "disabled" ]; then
#        echo -e "\033[34m Selinux is disabled !\033[0m"
#
#  elif [ "$(grep SELINUX= /etc/selinux/config  | grep -v "#" | cut -d= -f2)" == "enforcing" ]; then
#        sed -i "s/SELINUX=enforcing/SELINUX=disabled/g" /etc/selinux/config
#        setenforce 0
#                echo -e "\033[34m disabled selinux done !\033[0m"
#                echo -e "\033[34m Current Selinux Status is $(getenforce)\033[0m"
#
# elif [ "$(grep SELINUX= /etc/selinux/config  | grep -v "#" | cut -d= -f2)" == "permissive" ]; then
#        sed -i "s/SELINUX=permissive/SELINUX=disabled/g" /etc/selinux/config
#                echo -e "\033[34m disabled selinux ok !\033[0m"
#                echo -e "\033[34m Current Selinux Status is $(getenforce)\033[0m"
fi

