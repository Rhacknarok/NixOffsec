# -*- mode: ruby -*-
# vi: set ft=ruby :

# Native NIXOS
Vagrant.configure("2") do |config|
  config.vm.define "nixos-vbox" do |config|
  config.vm.box = "native-nixos/nixos-vbox"
  config.vm.box_version = "24.11"
  #config.vm.network "private_network", type: "dhcp"

  config.vm.synced_folder ".", "/vagrant", disabled: false
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
    echo "Native nixos ! "
  SHELL
end



  config.vm.define "nixos-vmware" do |config|
    config.vm.box = "native-nixos/nixos-vmware"
    config.vm.box_version = "24.11"
    #config.vm.network "private_network", type: "dhcp"
  
    config.vm.synced_folder ".", "/vagrant", disabled: false
    
    config.vm.provider :vmware_desktop do |v, override|
      v.gui = true
      v.vmx["memsize"] = "4096"
      v.vmx["numvcpus"] = "2"
    end
  
    config.vm.provision "shell", inline: <<-SHELL
      echo "Native nixos ! "
    SHELL
end

# To provided

  config.vm.define "nixos-vbox-offsec" do |config|
  config.vm.box = "native-nixos/nixos-vbox"
  config.vm.box_version = "24.11"
  #config.vm.network "private_network", type: "dhcp"

  config.vm.synced_folder ".", "/vagrant", disabled: false
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
    echo "Rhacknarok Nixos based security tooling provisionning !"
    git clone https://github.com/Rhacknarok/NixOffsec
    cd nixOffsec
    sh install.sh
  SHELL
end


  config.vm.define "nixos-vmware-offsec" do |config|
    config.vm.box = "native-nixos/nixos-vmware"
    config.vm.box_version = "24.11"
    #config.vm.network "private_network", type: "dhcp"
  
    config.vm.synced_folder ".", "/vagrant", disabled: false
    
    config.vm.provider :vmware_desktop do |v, override|
      v.gui = true
      v.vmx["memsize"] = "4096"
      v.vmx["numvcpus"] = "2"
    end
  
    config.vm.provision "shell", inline: <<-SHELL
      echo "Rhacknarok Nixos based security tooling provisionning !"
      git clone https://github.com/Rhacknarok/NixOffsec
      cd nixOffsec
      sudo sed -i '/^[[:space:]]*#[[:space:]]*\.\?\/vmware\.nix/s/^[[:space:]]*#//' ./modules/all.nix
      sh install.sh
    SHELL
end

# Already provided

  config.vm.define "nixOffsec-vbox" do |config|
  config.vm.box = "nixOffsec/nixOffsec-vbox"
  config.vm.box_version = "1"
  #config.vm.network "private_network", type: "dhcp"

  config.vm.synced_folder ".", "/vagrant", disabled: false
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
    echo "Rhacknarok Nixos based security tooling provided !"
  SHELL
end


  config.vm.define "nixOffsec-vmware" do |config|
  config.vm.box = "nixOffsec/nixOffsec-vmware"
  config.vm.box_version = "1"
  #config.vm.network "private_network", type: "dhcp"

  config.vm.synced_folder ".", "/vagrant", disabled: false
  
  config.vm.provider :vmware_desktop do |v, override|
    v.gui = true
    v.vmx["memsize"] = "4096"
    v.vmx["numvcpus"] = "2"
  end

  config.vm.provision "shell", inline: <<-SHELL
    echo "Rhacknarok Nixos based security tooling provided !"
  SHELL
  end
end