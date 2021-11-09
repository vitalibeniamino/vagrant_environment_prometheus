# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = 2
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos/7"
  config.vm.network "forwarded_port", guest: 9090, host: 9090
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
  end

  config.vm.define :server do |server|
    server.vm.host_name = "server"
  end

  config.vm.provision "shell", path: "scripts/install.sh"
  config.vm.provision "file", source: "templates/prometheus.yml", destination: "/home/vagrant/config/prometheus.yml"
  config.vm.provision "shell", inline: "/usr/local/bin/prometheus --config.file='/home/vagrant/config/prometheus.yml'"
end


