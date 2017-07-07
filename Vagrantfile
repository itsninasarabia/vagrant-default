# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "scotch/box"
    
    ############################################################
    # Oh My ZSH Install section

    # Install git and zsh prerequisites 
    config.vm.provision :shell, inline: "apt-get -y install git"
    config.vm.provision :shell, inline: "apt-get -y install zsh"

    # Clone Oh My Zsh from the git repo
    config.vm.provision :shell, privileged: false,
    inline: "git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh"

    # Copy in the default .zshrc config file
    config.vm.provision :shell, privileged: false,
    inline: "cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc"

    # Change the vagrant user's shell to use zsh
    config.vm.provision :shell, inline: "chsh -s /bin/zsh vagrant"

    ############################################################
    
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