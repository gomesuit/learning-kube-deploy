# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.box = "centos/7"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.define :master01 do |host|
    _HOSTNAME = "master01"
    _PRIVATE_IP_ADDRESS = "192.168.33.10"

    host.vm.hostname = _HOSTNAME
    host.vm.network "private_network", ip: _PRIVATE_IP_ADDRESS
    host.vm.provision :shell, path: "install-common-package.sh"
    host.vm.provision :shell, path: "stop-firewall.sh"
  end

  config.vm.define :worker01 do |host|
    _HOSTNAME = "worker01"
    _PRIVATE_IP_ADDRESS = "192.168.33.20"

    host.vm.hostname = _HOSTNAME
    host.vm.network "private_network", ip: _PRIVATE_IP_ADDRESS
    host.vm.provision :shell, path: "install-common-package.sh"
    host.vm.provision :shell, path: "stop-firewall.sh"
  end

end
