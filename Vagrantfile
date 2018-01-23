Vagrant.configure("2") do |config|
  config.vm.box = "kaorimatz/ubuntu-16.04-amd64"
  config.vm.provision "shell",
    inline: "/bin/sh /vagrant/provision.sh"
end
