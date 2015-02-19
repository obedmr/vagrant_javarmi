# -*- mode: ruby -*-
# vi: set ft=ruby :
 
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 
  config.vm.box = "obedmr/archlinux"
 
  # RMI Server
  config.vm.define "rmiserver" do |server_config|
    server_config.vm.hostname = "rmiserver"
    server_config.vm.provision "shell", path: "scripts/server.sh" 
    server_config.vm.network "private_network", ip: "10.0.0.10"
  end
  # End RMI Server

  # RMI Clients
  # Client 1
  config.vm.define "rmiclient1" do |client_config|
    client_config.vm.hostname = "rmiclient1"
    client_config.vm.provision "shell", path: "scripts/client.sh"
    client_config.vm.network "private_network", ip: "10.0.0.11"
  end

  # Client 2
  config.vm.define "rmiclient2" do |client_config|
    client_config.vm.hostname = "rmiclient2"
    client_config.vm.provision "shell", path: "scripts/client.sh"
    client_config.vm.network "private_network", ip: "10.0.0.12"
  end
  
  # End RMI Clients
end
