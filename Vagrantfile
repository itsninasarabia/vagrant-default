# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "scotch/box"
    
    config.vm.provision :shell, path: "bootstrap.sh"
    
    config.vm.network "private_network", ip: "192.168.88.10"
    config.vm.hostname = "some.url.com"
    #config.vm.synced_folder "./", "/var/www", :mount_options => ["dmode=777", "fmode=666"]
    config.vm.synced_folder "./", "/var/www", type:"nfs", mount_options:["nolock,vers=3,udp,noatime,actimeo=1"]

    #config.vm.provision "shell", inline: <<-SHELL
	 #   mailcatcher --http-ip=192.168.88.10
	#SHELL
	
    config.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.cpus = 2
    end
    
end