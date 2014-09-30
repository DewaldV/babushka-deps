# menu.rb

dep 'menu-items.defaults' do
  key 'menuExtras'
  domain 'com.apple.systemuiserver'
  type 'array'
  value ''/System/Library/CoreServices/Menu Extras/TimeMachine.menu', \
    '/System/Library/CoreServices/Menu Extras/Bluetooth.menu', \
    '/System/Library/CoreServices/Menu Extras/AirPort.menu', \
    '/System/Library/CoreServices/Menu Extras/Volume.menu', \
    '/System/Library/CoreServices/Menu Extras/TextInput.menu', \
    '/System/Library/CoreServices/Menu Extras/Battery.menu', \
    '/System/Library/CoreServices/Menu Extras/Clock.menu''
end
