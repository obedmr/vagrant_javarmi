# -*- mode: ruby -*-
# vi: set ft=ruby :
 
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 
  config.vm.box = "obedmr/archlinux"
 
  # RMI Server
  config.vm.define "rmiserver" do |server_config|
    server_config.vm.hostname = "rmiserver"
    server_config.vm.provision "shell", path: "scripts/server.sh" 
    server_config.vm.network "private_network", ip: "10.0.0.21"
    server_config.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 4
    end
  end
  # End RMI Server

  # RMI Workers
  # Worker 1
  config.vm.define "rmiworker1" do |worker_config|
    worker_config.vm.hostname = "rmiworker1"
    worker_config.vm.provision "shell", path: "scripts/worker.sh"
    worker_config.vm.network "private_network", ip: "10.0.0.11"
  end

  # Worker 2
  config.vm.define "rmiworker2" do |worker_config|
    worker_config.vm.hostname = "rmiworker2"
    worker_config.vm.provision "shell", path: "scripts/worker.sh"
    worker_config.vm.network "private_network", ip: "10.0.0.12"
  end

  # Worker 3
  config.vm.define "rmiworker3" do |worker_config|
    worker_config.vm.hostname = "rmiworker3"
    worker_config.vm.provision "shell", path: "scripts/worker.sh"
    worker_config.vm.network "private_network", ip: "10.0.0.13"
  end

  # Worker 4
  config.vm.define "rmiworker4" do |worker_config|
    worker_config.vm.hostname = "rmiworker4"
    worker_config.vm.provision "shell", path: "scripts/worker.sh"
    worker_config.vm.network "private_network", ip: "10.0.0.14"
  end

  # Worker 5
  config.vm.define "rmiworker5" do |worker_config|
    worker_config.vm.hostname = "rmiworker5"
    worker_config.vm.provision "shell", path: "scripts/worker.sh"
    worker_config.vm.network "private_network", ip: "10.0.0.15"
  end

  # Worker 6
  config.vm.define "rmiworker6" do |worker_config|
    worker_config.vm.hostname = "rmiworker6"
    worker_config.vm.provision "shell", path: "scripts/worker.sh"
    worker_config.vm.network "private_network", ip: "10.0.0.16"
  end

  # Worker 7
  config.vm.define "rmiworker7" do |worker_config|
    worker_config.vm.hostname = "rmiworker7"
    worker_config.vm.provision "shell", path: "scripts/worker.sh"
    worker_config.vm.network "private_network", ip: "10.0.0.17"
  end

  # Worker 8
  config.vm.define "rmiworker8" do |worker_config|
    worker_config.vm.hostname = "rmiworker8"
    worker_config.vm.provision "shell", path: "scripts/worker.sh"
    worker_config.vm.network "private_network", ip: "10.0.0.18"
  end
  
  # End RMI Workers
end
