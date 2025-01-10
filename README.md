# NixOffsec  
<p align="center">
  <img src="./Images/NixOS.svg" width="550" height="160" alt="Nixos Forever" />
</p>  

## So why this project ?

Nixos is a declarative OS, which means it provides reliable and atomic updates. but nix(os) is more than that, it's also a package manager. and this declarative operation allows identical rebuildability and reproducibility.   

Our aim here is not to revolutionize anything, but to be as efficient as possible in order to have a fast and reliable pentesting machine, so to avoid any cumbersome and tedious installation, we've automated everything. This applies to both VM installation and the installation of Nixos configuration files, which have been made modular.  

### So what we have to the menu ? <img src="./Images/hehe_boi.gif" align="right" width="250" height="160" />  
1. Native format (just nixos).
2. Not provided but prepared for that. 
3. Already provisioned. (with Offensive tools)  

> [!NOTE]  
> In either case if you modify the vagrantfile in the right way you should be able to either provision yourself with your specific packages, or add packages to the version already provisioned, just modify the configuration files in `modules` folder.  

> [!CAUTION]  
> For the NixOffsec part, you need at least 40g of available space, the OS alone =  30g, in flexible disk by default I've given it 70g.  

## Prerequisites  
Of course, as a prerequisite, you need vagrant and the plugins linked to it.  
https://developer.hashicorp.com/vagrant/install  
For Vmware the desktop plugin are necessary
```
vagrant plugin install vagrant-vmware-desktop
```

## Installation  
### Native Nixos
```
vagrant up nixos-vbox
vagrant up nixos-vmware
```

### To provide  
```
vagrant up nixos-vbox-offsec
vagrant up nixos-vmware-offsec
```

### Already provided  
```
vagrant up nixOffsec-vbox
vagrant up nixOffsec-vmware
```

## Our Native Nixos Configuration  
You can also find our configuration files for the “native” version in the folder [`native-nixos-conf`](./native-nixos-conf).  

## Vagrant box construction   
The manual box-building method [here](./vagrantBox-construction/README.md).  <img src="./Images/smart.gif" align="right" width="270" height="200" />  
**Yes**, we know that packer exists and that it allows you to create iso's or provision methods for boxes, but for nixos the methodology is too daunting and cumbersome for nothing.  
Knowing that, the updates are without real risk, and that they are atomic you don't need to recreate the whole thing for each update, even major ones.  
> [!NOTE]  
> In fact, you could just do it once and update declaratively, and it would be exactly the same.  
> That's one of the strength of Nixos: you can now say "it works on my machine" without being insulted.  
