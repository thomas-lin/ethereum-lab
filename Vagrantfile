# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  
  (1..2).each do |i|
    config.vm.box = "ubuntu/trusty64"
    config.vm.define "ethereum-lab-#{i}" do |node|
      node.vm.hostname = "ethereum-lab-#{i}"
      node.vm.network "private_network", ip: "10.3.10.10#{i}"
      node.vm.provider "virtualbox" do |vb|      
        vb.memory = "1024"
      end
      node.ssh.password = "vagrant"
      config.vm.provision :shell , path: "bootstrap.sh"
      
    end
  end

end
