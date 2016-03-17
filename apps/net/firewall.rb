# firewall.rb

dep 'little-snitch.cask'

dep 'osx-net-firewall' do
  requires 'little-snitch.cask'
end
