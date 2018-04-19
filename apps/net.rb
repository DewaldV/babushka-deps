# net.rb

dep 'osx-net-all' do
  requires 'osx-net'
  requires 'osx-net-extras'
end

dep 'osx-net' do
  requires 'osx-net-browsers'
  requires 'osx-net-cloud'
  requires 'osx-net-drive'
  requires 'osx-net-firewall'
  requires 'osx-net-gpg'
  requires 'osx-net-vpn'
  requires 'osx-net-im'
  requires 'osx-net-voip'
end

dep 'osx-net-extras' do
  requires 'osx-net-browsers-extras'
  requires 'osx-net-proxy'
end
