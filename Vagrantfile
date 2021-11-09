# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = 2
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos/7"
  config.vm.network "forwarded_port", guest: 9090, host: 9090
  config.vm.network "forwarded_port", guest: 9100, host: 9100
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
  end

  config.vm.define :server do |server|
    server.vm.host_name = "server"
  end
  
  # WGET install
  config.vm.provision "shell", inline: "yum -y install wget"

  # Prometheus install
  config.vm.provision "shell", path: "scripts/prometheus.sh"
  config.vm.provision "file", source: "templates/prometheus.yml", destination: "/home/vagrant/config/prometheus.yml"
  
  # Node_Exporter install
  config.vm.provision "shell", path: "scripts/node_exporter.sh"
  
  # Grafana install
  config.vm.provision "shell", path: "scripts/grafana.sh"
  
  # Run Following commands
  # node_exporter --log.level=error
  # ctrl + z
  # prometheus --config.file='/home/vagrant/config/prometheus.yml' --log.level=error
end


