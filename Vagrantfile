# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.host_name = "example.local"
  config.vm.network :hostonly, "192.168.33.10"
  
  config.vm.provision :puppet do |puppet|
  puppet.manifests_path = "./manifests"
  puppet.module_path = "./modules"
    puppet.manifest_file  = "site.pp"
    puppet.options = "--verbose"
  end

end
