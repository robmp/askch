# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  # Mount salt roots
  config.vm.synced_folder "salt/roots/", "/srv/salt/"

  # Salt provisioning
  config.vm.provision :salt do |salt|
    salt.masterless = true
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
  end

  # Forward port to the application
  config.vm.network "forwarded_port", guest_ip: "127.0.0.1", guest: 9292, host_ip: "127.0.0.1", host: 9292
end
