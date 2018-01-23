Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.ssh.username = "user"
  config.ssh.password = ""
  config.vm.provision "shell",
    inline: "/bin/sh /vagrant/provision.sh"
end
