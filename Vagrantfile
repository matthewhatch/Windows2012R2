# -*- mode: ruby -*-
# vi: set ft=ruby :

# you're doing.
Vagrant.configure(2) do |config|
  config.vm.guest = :windows
  config.vm.box = "devopsguys/Windows2012R2Eval"
  config.vm.communicator = "winrm"
  config.winrm.username = "vagrant"
  config.winrm.password = "vagrant"
  config.winrm.port = 5985
  
  config.vm.provision "shell" do |s|
    p = File.expand_path("../",__FILE__)
    s.path = p + "/Provision.ps1"
  end
  
  config.vm.provision "shell" do |s|
    p = File.expand_path("../",__FILE__)
    s.path = p + "/PostProvision.ps1"
  end
  
  config.vm.provision "shell" do |s|
    p = File.expand_path("../",__FILE__)
    s.path = p + "/DSCProvision.ps1"
  end
  
end
