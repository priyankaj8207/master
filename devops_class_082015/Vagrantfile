# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "precise64"
  # config.vm.box_check_update = false

  config.vm.network "forwarded_port", guest: 80, host: 8888
  config.vm.network "forwarded_port", guest: 8080, host: 18080
  
  # config.vm.provision "shell", path: "provision.sh"
  #config.vm.provision "chef_solo" do |chef|
  #     chef.add_recipe "vagrant_la"
  #end
  config.vm.provision "puppet" do |puppet|
  		puppet.manifests_path="manifests"
        puppet.manifest_file="default.pp"
  end

  config.vm.provision "shell", path: "setup_user.sh"
  config.vm.provision "shell", path: "setup_java.sh"
  config.vm.provision "shell", path: "setup_tomcat.sh"  
  
  config.vm.provision "shell", path: "post_install.sh"
  
end
