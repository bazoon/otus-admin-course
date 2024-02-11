
Vagrant.configure(2) do |config| 
  config.vm.box = "generic/centos8" 
  # config.vm.box_version = "2004.01" 

  config.vm.provider "virtualbox" do |v| 
    v.memory = 256 
    v.cpus = 1 
  end

  # config.vm.define "nfss" do |nfss| 
  #   # nfss.vm.hostname = "nfss" 
  # end 

end 

wget https://downloads.percona.com/downloads/percona-distribution-mysql-ps/percona-distribution-mysql-ps-8.0.28/binary/redhat/8/x86_64/percona-orchestrator-3.2.6-2.el8.x86_64.rpm -O /usr/share/nginx/html/repo/percona-orchestrator-3.2.6-2.el8.x86_64.rpm
