# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

$script = <<SCRIPT
sudo -i
echo I am provisioning...
curl -L https://github.com/docker/compose/releases/download/1.3.3/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
SCRIPT


Vagrant.configure(2) do |config|

 # not working in win 10
 # config.vm.network :private_network, ip: "172.17.0.4"

  config.vm.network :forwarded_port, guest: 80, host: 80
  config.vm.network :forwarded_port, guest: 8080, host: 8080
  config.vm.network :forwarded_port, guest: 3306, host: 3306

  # https://github.com/dduportal/boot2docker-vagrant-box
  config.vm.box = "dduportal/boot2docker"
  config.vm.box_version = "1.7"

  config.vm.synced_folder "./", "/src"


  config.vm.provision "shell", inline: $script

end
