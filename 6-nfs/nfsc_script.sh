yum install nfs-utils -y
echo "192.168.56.10:/srv/share/ /mnt nfs defaults 0 0" >>/etc/fstab
systemctl daemon-reload
systemctl restart remote-fs.target
