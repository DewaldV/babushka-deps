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
  label 'Documents'
  path '~/Documents' 
end

dep 'downloads.dockicon' do
  label 'Downloads'
  path '~/Downloads'
end

dep 'home.dockicon' do
  label 'Home'
  path '~/'
end

dep 'dock-default-icons' do
  requires 'home.dockicon'
  requires 'documents.dockicon'
  requires 'downloads.dockicon'
end

dep 'osx-settings-dock' do
  requires 'dock-autohide.defaults'
  requires 'dock-magnification.defaults'
  requires 'dock-default-icons'
  after { 'killall -HUP Dock' }
end
