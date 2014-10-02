# mouse.rb

dep 'enable-tap-bluetooth.defaults' do
  key 'Clicking'
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  type 'int'
  value '1'
end

dep 'enable-tap-behaviour.defaults' do
  key 'com.apple.mouse.tapBehavior'
  global? true
  type'int'
  value '1'
end

dep 'enable-tap-click' do
  requires 'enable-tap-bluetooth.defaults'
  requires 'enable-tap-behaviour.defaults'
end

dep 'enable-right-click-corner.defaults' do
  key 'TrackpadRightClick'
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  type 'int'
  value '1'
end

dep 'enable-right-click-secondary.defaults' do
  key 'TrackpadCornerSecondaryClick'
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  type 'int'
  value '2'
end

dep 'enable-right-click-corner-global.defaults' do
  key 'com.apple.trackpad.trackpadCornerClickBehavior'
  global? true
  type 'int'
  value '1'
end

dep 'enable-right-click-secondary-global.defaults' do
  key 'com.apple.trackpad.enableSecondaryClick'
  global? true
  type 'int'
  value '1'
end

dep 'enable-right-click' do
  requires 'enable-right-click-corner.defaults'
  requires 'enable-right-click-secondary.defaults'
  requires 'enable-right-click-corner-global.defaults'
  requires 'enable-right-click-secondary-global.defaults'
end

dep 'osx-settings-mouse' do
#  requires 'enable-tap-click'
#  requires 'enable-right-click'
end

