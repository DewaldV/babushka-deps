# vpn.rb

dep 'openvpn.bin'

dep 'tunnelbear.cask'

dep 'tunnelblick.cask'

dep 'osx-net-vpn' do
  requires 'openvpn.bin'
  requires 'tunnelbear.cask'
end

dep 'osx-net-vpn-gui' do
  requires 'tunnelblick.cask'
end
