Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  # Add 4GB RAM
  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--name", "jenkins",
      "--memory", "8192"
    ]
  end

  config.vm.hostname = "jenkins"
  config.vm.network "private_network", ip: "192.168.5.134"
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "jenkins.yaml"
  end

end
