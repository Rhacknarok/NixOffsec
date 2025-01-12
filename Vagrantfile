# -*- mode: ruby -*-
# vi: set ft=ruby :

# Native NIXOS
Vagrant.configure("2") do |config|
  config.vm.define "nixos-vbox" do |config|
  config.vm.box = "native-nixos/nixos-vbox"
  #config.vm.box_version = "24.11"
  config.vm.box_url = "https://api.cloud.hashicorp.com/vagrant-archivist/v1/object/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJuYXRpdmUtbml4b3Mvbml4b3MtdmJveC8yNC4xMS92aXJ0dWFsYm94LzI2Nzg5MWFiLWNkYWYtMTFlZi1hNjM3LTg2N2MxYjZlZmIxMyIsIm1vZGUiOiJyIiwiZmlsZW5hbWUiOiJuaXhvcy12Ym94XzI0LjExX3ZpcnR1YWxib3hfYW1kNjQuYm94In0.cobp-extsP-VEN35I-SBOz24DQ_m_ZGC4yoDQfNfSZg"
  #config.vm.network "private_network", type: "dhcp"
  #config.vm.disk :disk, size: "100GB", primary: true
  
  config.vm.box_download_checksum_type = "sha256"
  config.vm.box_download_checksum = "BF1E24DC88CBF903AA5AC0CAFE7F053AAB35BD70C57E8ED8AF1426A5D4CFFCE1"
  
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
    #config.vm.box_version = "24.11"
    config.vm.box_url = "https://api.cloud.hashicorp.com/vagrant-archivist/v1/object/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJuYXRpdmUtbml4b3Mvbml4b3Mtdm13YXJlLzI0LjExL3Ztd2FyZV9kZXNrdG9wL2E5MmM3OGNkLWNlMmItMTFlZi1hMThjLTU2MzFhYzYyNjMxMCIsIm1vZGUiOiJyIiwiZmlsZW5hbWUiOiJuaXhvcy12bXdhcmVfMjQuMTFfdm13YXJlX2Rlc2t0b3BfYW1kNjQuYm94In0.Z1I1UvBFBuyB2szSWCAiB0gbBBCY7yDGBPFh45r9MDA"
    #config.vm.network "private_network", type: "dhcp"
    #config.vm.disk :disk, size: "100GB", primary: true

    config.vm.box_download_checksum_type = "sha256"
    config.vm.box_download_checksum = "2FF31A9B499EC5808884FA4FC45EC510256073E6E3F227CC8DD6DC9B10AC3588"

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

# To provide

  config.vm.define "nixos-vbox-offsec" do |config|
  config.vm.box = "native-nixos/nixos-vbox"
  #config.vm.box_version = "24.11"
  config.vm.box_url = "https://api.cloud.hashicorp.com/vagrant-archivist/v1/object/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJuYXRpdmUtbml4b3Mvbml4b3MtdmJveC8yNC4xMS92aXJ0dWFsYm94LzI2Nzg5MWFiLWNkYWYtMTFlZi1hNjM3LTg2N2MxYjZlZmIxMyIsIm1vZGUiOiJyIiwiZmlsZW5hbWUiOiJuaXhvcy12Ym94XzI0LjExX3ZpcnR1YWxib3hfYW1kNjQuYm94In0.cobp-extsP-VEN35I-SBOz24DQ_m_ZGC4yoDQfNfSZg"
  #config.vm.network "private_network", type: "dhcp"
  #config.vm.disk :disk, size: "100GB", primary: true

  config.vm.box_download_checksum_type = "sha256"
  config.vm.box_download_checksum = "BF1E24DC88CBF903AA5AC0CAFE7F053AAB35BD70C57E8ED8AF1426A5D4CFFCE1"

  config.vm.synced_folder ".", "/vagrant", disabled: false
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
    echo "Rhacknarok Nixos based security tooling provisionning !"
    git clone https://github.com/Rhacknarok/NixOffsec
    cd NixOffsec
    sh install.sh
    #sh sliver.sh
  SHELL
end


  config.vm.define "nixos-vmware-offsec" do |config|
    config.vm.box = "native-nixos/nixos-vmware"
    #config.vm.box_version = "24.11"
    config.vm.box_url = "https://api.cloud.hashicorp.com/vagrant-archivist/v1/object/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJuYXRpdmUtbml4b3Mvbml4b3Mtdm13YXJlLzI0LjExL3Ztd2FyZV9kZXNrdG9wL2E5MmM3OGNkLWNlMmItMTFlZi1hMThjLTU2MzFhYzYyNjMxMCIsIm1vZGUiOiJyIiwiZmlsZW5hbWUiOiJuaXhvcy12bXdhcmVfMjQuMTFfdm13YXJlX2Rlc2t0b3BfYW1kNjQuYm94In0.Z1I1UvBFBuyB2szSWCAiB0gbBBCY7yDGBPFh45r9MDA"
    #config.vm.network "private_network", type: "dhcp"
    #config.vm.disk :disk, size: "100GB", primary: true

    config.vm.box_download_checksum_type = "sha256"
    config.vm.box_download_checksum = "2FF31A9B499EC5808884FA4FC45EC510256073E6E3F227CC8DD6DC9B10AC3588"

    config.vm.synced_folder ".", "/vagrant", disabled: false
    
    config.vm.provider :vmware_desktop do |v, override|
      v.gui = true
      v.vmx["memsize"] = "4096"
      v.vmx["numvcpus"] = "2"
    end
  
    config.vm.provision "shell", inline: <<-SHELL
      echo "Rhacknarok Nixos based security tooling provisionning !"
      git clone https://github.com/Rhacknarok/NixOffsec
      cd NixOffsec
      sudo sed -i '/^[[:space:]]*#[[:space:]]*\.\?\/vmware\.nix/s/^[[:space:]]*#//' ./modules/all.nix
      sh install.sh
      #sh sliver.sh
    SHELL
end

# Already provided

  config.vm.define "nixOffsec-vbox" do |config|
  config.vm.box = "nixOffsec/nixOffsec-vbox"
  #config.vm.box_version = "1"
  config.vm.box_url = "https://api.cloud.hashicorp.com/vagrant-archivist/v1/object/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJuaXhPZmZzZWMvbml4T2Zmc2VjLXZib3gvMS92aXJ0dWFsYm94LzhjZDY1MWU1LWNkZjAtMTFlZi04MjNlLWU2MjE0YTYyOTI0ZSIsIm1vZGUiOiJyIiwiZmlsZW5hbWUiOiJuaXhPZmZzZWMtdmJveF8xX3ZpcnR1YWxib3hfYW1kNjQuYm94In0.n160qMoop349ydYdJxSw05nJvlV-kLHhumiSZTOyFiI"
  #config.vm.network "private_network", type: "dhcp"
  #config.vm.disk :disk, size: "100GB", primary: true

  config.vm.box_download_checksum_type = "sha256"
  config.vm.box_download_checksum = "B24BB84F6500614554DBA90C811D716A6F80497D71FA177EB44F6480F2C961CA"

  config.vm.synced_folder ".", "/vagrant", disabled: false
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
    echo "Rhacknarok Nixos based security tooling provided !"
    #git clone https://github.com/Rhacknarok/NixOffsec
    #cd NixOffsec
    #sh install.sh
    #sh sliver.sh
  SHELL
end


  config.vm.define "nixOffsec-vmware" do |config|
  config.vm.box = "nixOffsec/nixOffsec-vmware"
  #config.vm.box_version = "1"
  config.vm.box_url = "https://api.cloud.hashicorp.com/vagrant-archivist/v1/object/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJuaXhPZmZzZWMvbml4T2Zmc2VjLXZtd2FyZS8xL3Ztd2FyZV9kZXNrdG9wLzQyYTkyNzBmLWNlZGMtMTFlZi1iZTRlLTZhOTM3MDU2ZGY5ZCIsIm1vZGUiOiJyIiwiZmlsZW5hbWUiOiJuaXhPZmZzZWMtdm13YXJlXzFfdm13YXJlX2Rlc2t0b3BfYW1kNjQuYm94In0.O5IsE9G9xIkmv3g5fs27uWMkEb-InzvqJM0cy62nSuE"
  #config.vm.network "private_network", type: "dhcp"
  #config.vm.disk :disk, size: "100GB", primary: true

  config.vm.synced_folder ".", "/vagrant", disabled: false

  config.vm.box_download_checksum_type = "sha256"
  config.vm.box_download_checksum = "A24F2F44D5F0618A9451E655B1533A4E39429833E1EECF4337938EC28D775B0C"
  
  config.vm.provider :vmware_desktop do |v, override|
    v.gui = true
    v.vmx["memsize"] = "4096"
    v.vmx["numvcpus"] = "2"
  end

  config.vm.provision "shell", inline: <<-SHELL
    echo "Rhacknarok Nixos based security tooling provided !"
    #git clone https://github.com/Rhacknarok/NixOffsec
    #cd NixOffsec
    #sudo sed -i '/^[[:space:]]*#[[:space:]]*\.\?\/vmware\.nix/s/^[[:space:]]*#//' ./modules/all.nix
    #sh install.sh
    #sh sliver.sh
  SHELL
  end
end
