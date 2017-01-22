# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
WORKER_COUNT = 2

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/centos-7.2"
  config.ssh.forward_agent = true
  config.vm.provision "shell", path: "install-common-package.sh"
  config.vm.provision "shell", path: "install-docker.sh"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.define :master do |host|
    _HOSTNAME = "master"
    _PRIVATE_IP_ADDRESS = "192.168.33.10"

    host.vm.hostname = _HOSTNAME
    host.vm.network "private_network", ip: _PRIVATE_IP_ADDRESS
    host.vm.provision "shell", path: "install-kubernetes-master.sh"
  end

  (1..WORKER_COUNT).each do |i|
    _PRIVATE_IP_ADDRESS = "192.168.33.1#{i}"
    config.vm.define "worker#{i}" do |subconfig|
      subconfig.vm.hostname = "worker#{i}"
      subconfig.vm.network "private_network", ip: _PRIVATE_IP_ADDRESS
      subconfig.vm.provision "shell" do |s|
        s.path = "install-kubernetes-worker.sh"
        s.args = _PRIVATE_IP_ADDRESS
      end
    end
  end

end

