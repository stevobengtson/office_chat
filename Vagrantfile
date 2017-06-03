# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'bento/ubuntu-16.04'
  config.vm.box_version = '2.3.1'

  config.vm.provider 'virtualbox' do |vb|
    vb.name = 'office_chat'
    vb.memory = 1024
    vb.cpus = 2
  end

  config.vm.synced_folder '.', '/vagrant', type: 'nfs',
                                           mount_options: ['rw', 'vers=3',
                                                           'tcp', 'fsc']

  config.vm.network :private_network, ip: '192.168.55.55'
  config.vm.network :forwarded_port, guest: 4000, host: 4000

  config.vm.provision :shell, path: 'vagrant_provision.sh'
  config.vm.provision :shell, path: 'vagrant_setup.sh', privileged: false
  # config.vm.provision :shell, path: 'server_start.sh', privileged: false,
  #                             run: 'always'
end
