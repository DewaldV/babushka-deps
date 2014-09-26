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

dep 'dock-tilesize.defaults' do
  key 'tilesize'
  domain 'com.apple.dock'
  type 'int'
  value '48'
end

dep 'dock-size-immutable.defaults' do
  key 'size-immutable'
  domain 'com.apple.dock'
  type 'int'
  value '1'
end

dep 'dock-default-settings' do
  requires 'dock-autohide.defaults'
  requires 'dock-magnification.defaults'
  requires 'dock-tilesize.defaults'
  requires 'dock-size-immutable.defaults'
end

dep 'dock-remove-all-icons' do
  met? { shell('dockutil --list') == '' }
  meet { shell('dockutil --remove all') }
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
  requires 'dock-remove-all-icons'
  requires 'home.dockicon'
  requires 'documents.dockicon'
  requires 'downloads.dockicon'
end

dep 'safari.dockicon' do
  label 'Safari'
  path '/Applications/Safari.app'
end

dep 'itunes.dockicon' do
  label 'iTunes'
  path '/Applications/iTunes.app'
end

dep 'firefox.dockicon' do
  label 'FireFox'
  path '/Applications/Firefox.app'
end

dep 'opera.dockicon' do
  label 'Opera'
  path '/Applications/Opera.app'
end

dep 'chrome.dockicon' do
  label 'Chrome'
  path '/Applications/Google\ Chrome.app'
end

dep 'steam.dockicon' do
  label 'Steam'
  path '/Applications/Steam.app'
end

dep 'iterm2.dockicon' do
  label 'iTerm'
  path '~/Applications/iTerm.app'
end

dep 'dock-default-apps' do
  requires 'dock-default-icons'
  requires 'opera.dockicon'
  requires 'chrome.dockicon'
  requires 'firefox.dockicon'
  requires 'safari.dockicon'
  requires 'itunes.dockicon'
  requires 'steam.dockicon'
  requires 'iterm2.dockicon'
end

dep 'osx-settings-dock' do
  requires 'dock-default-settings'
  requires 'dock-default-icons'
  requires 'dock-default-apps'
  after { 'killall -HUP Dock' }
end
