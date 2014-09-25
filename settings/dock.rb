# dock.rb 

dep 'dock-autohide.defaults' do
  key 'autohide'
  domain 'com.apple.dock'
  type 'int'
  value '1'
end

dep 'dock-magnification.defaults' do
  key 'magnification'
  domain 'com.apple.dock'
  type 'int'
  value '0'
end

dep 'documents.dockicon' do
  name 'Documents'
  path '~/Documents' 
end

dep 'downloads.dockicon' do
  name 'Downloads'
  path '~/Downloads'
end

dep 'home.dockicon' do
  name 'Home'
  path '~/'
end

dep 'dock-default-icons' do
  requires 'downloads.dockicon'
  requires 'documents.dockicon'
  requires 'home.dockicon'
end

dep 'osx-settings-dock' do
  requires 'dock-autohide.defaults'
  requires 'dock-magnification.defaults'
  after { 'killall -HUP Dock' }
end
