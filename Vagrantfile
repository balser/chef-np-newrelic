# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_plugin "vagrant-berkshelf"
Vagrant.require_plugin "vagrant-omnibus"

Vagrant.configure("2") do |config|

  config.omnibus.chef_version = :latest

  config.vm.hostname = "np-newrelic"
  config.vm.box = "opscode-ubuntu-13.04"
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-13.04_provisionerless.box"

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.run_list = ["recipe[np-newrelic::default]"]
  end
end
