Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
#  config.vm.synced_folder '.', '/vagrant', disabled: true
#  config.ssh.insert_key = false
  
  config.vm.provider "virtualbox" do |v|
      v.name = "dev-env"
      v.memory = 1024
      v.cpus = 2
    end

  config.vm.hostname = "dev-env"
  config.vm.network :private_network, ip: "192.168.56.7"
 
  config.vm.provision "ansible" do |ansible|
    ansible.compatibility_mode = "2.0"
    ansible.playbook = "main.yml"

  end
end
