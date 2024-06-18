#!/bin/bash

/usr/share/easy-rsa/easyrsa init-pki nopass
/usr/share/easy-rsa/easyrsa build-ca nopass
#echo 'rasvpn' | /usr/share/easy-rsa/easyrsa gen-req server nopass  --out=./server 
#echo 'yes' | /usr/share/easy-rsa/easyrsa sign-req server server 
#/usr/share/easy-rsa/easyrsa gen-dh
#openvpn --genkey secret ca.key
#echo 'client' | /usr/share/easy-rsa/easyrsa gen-req client nopass --out=./client 
#echo 'yes' | /usr/share/easy-rsa/easyrsa sign-req client client
