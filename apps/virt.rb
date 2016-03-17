# vm.rb

dep 'dockertoolbox.cask'

dep 'vagrant.cask'

dep 'virtualbox.cask'

dep 'osx-virt' do
  requires 'virtualbox.cask'
  requires 'dockertoolbox.cask'
  requires 'vagrant.cask'
end
