$script = <<-SCRIPT
echo apt update ...
apt-get update && \
echo installing ansible
apt-get install ansible -y 
SCRIPT

Vagrant.configure("2") do |config|
    config.vm.box = "generic/debian12"
    config.vm.synced_folder ".", "/home/vagrant/ansible"
    config.vm.provision "shell", inline: $script

    config.vm.provider "virtualbox" do |vb|
        vb.name = "ansible-desktop-test"
        vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    end
end