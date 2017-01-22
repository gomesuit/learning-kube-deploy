# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/centos-7.2"
  config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.define :master do |host|
    _HOSTNAME = "master"
    _PRIVATE_IP_ADDRESS = "192.168.33.10"

    host.vm.hostname = _HOSTNAME
    host.vm.network "private_network", ip: _PRIVATE_IP_ADDRESS
    host.vm.provision "shell", path: "install-common-package.sh"
    host.vm.provision "shell", path: "install-docker.sh"
    host.vm.provision "shell", path: "install-kubernetes-master.sh"
  end

  config.vm.define :worker01 do |host|
    _HOSTNAME = "worker01"
    _PRIVATE_IP_ADDRESS = "192.168.33.20"

    host.vm.hostname = _HOSTNAME
    host.vm.network "private_network", ip: _PRIVATE_IP_ADDRESS
    host.vm.provision "shell", path: "install-common-package.sh"
    host.vm.provision "shell", path: "install-docker.sh"
    host.vm.provision "shell", path: "install-kubernetes-worker.sh"
  end

end

