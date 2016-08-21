# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true

  config.vm.box = "centos/7"

  config.vm.define :master01 do |host|
    _HOSTNAME = "master01"
    _PRIVATE_IP_ADDRESS = "192.168.33.10"

    host.vm.hostname = _HOSTNAME
    host.vm.network "private_network", ip: _PRIVATE_IP_ADDRESS
    host.vm.provision :shell, path: "install-common-package.sh"
    host.vm.provision :shell, path: "stop-firewall.sh"
    #host.vm.provision :shell, path: "set-hosts.sh"
    #host.vm.provision :shell, path: "install-etcd.sh"
    #host.vm.provision :shell, path: "install-flanneld.sh"
    #host.vm.provision :shell, path: "install-kubernetes-master.sh"
    #host.vm.provision :shell, path: "clone-kubernetes-sample.sh"
  end

end