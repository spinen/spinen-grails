#!/usr/bin/env ruby
#^syntaxBOX detection

# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.hostname = 'spinen-base'

  config.vm.box = 'chef/ubuntu-14.04'
  config.vm.box_url = 'https://vagrantcloud.com/chef/ubuntu-14.04'

  config.vm.network :private_network, type: 'dhcp'
  # optionally assign a local IP by uncommenting the line below 
  # and removing/commenting the 'dhcp' line
  # config.vm.network :private_network, ip: 192.168.101.200



  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options. At SPINEN we prefer to
  # use NFS syncing, which is significantly faster than native.
  # config.vm.synced_folder "../data", "/vagrant_data", nfs: true



  config.vm.provision :chef_solo do |chef|
    chef.json = {
      mysql: {
        server_root_password: 'rootpass',
        server_debian_password: 'debpass',
        server_repl_password: 'replpass'
      }
    }

    chef.run_list = [
      'recipe[spinen-base::default]'
    ]
  end
end
