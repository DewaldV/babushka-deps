# vm.rb

dep 'docker.cask'

dep 'packer.bin'

dep 'vagrant.cask'

dep 'virtualbox.cask'

dep 'osx-virt' do
  requires 'virtualbox.cask'
  requires 'docker.cask'
  requires 'vagrant.cask'
  requires 'packer.bin'
end
