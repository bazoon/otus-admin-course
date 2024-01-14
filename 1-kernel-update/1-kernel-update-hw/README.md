vagrant ssh
uname -r
sudo yum install -y https://www.elrepo.org/elrepo-release-8.el8.elrepo.noarch.rpm 
sudo yum --enablerepo elrepo-kernel install kernel-ml -y
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo grub2-set-default 0
packer build centos.json
vagrant box add --name centos8-kernel6 centos-8-kernel-6-x86_64-Minimal.box 
vagrant init centos8-kernel6
vagrant up 
vagrant ssh 

Публикацию я сделал через веб интерфейс, через командную строку не получилось. 


Вывод команд можно увидеть в папке screens. 
