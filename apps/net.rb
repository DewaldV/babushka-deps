# net.rb

dep 'osx-net-all' do
  requires 'osx-net'
  requires 'osx-net-extras'
end

dep 'osx-net' do
  requires 'osx-net-firewall'
  requires 'osx-net-gpg'
  requires 'osx-net-vault'
  requires 'osx-net-vpn'
end

dep 'osx-net-extras' do
  requires 'osx-net-browsers-extras'
  requires 'osx-net-drive'
  requires 'osx-net-im'
  requires 'osx-net-proxy'
  requires 'osx-net-voip'
end
