# keyboard.rb

dep 'keyboard-enable-function-keys.defaults' do
  key 'com.apple.keyboard.fnState'
  type 'int'
  value '1'
  global? true
end

dep 'keyboard-enable-ui-full-control.defaults' do
  key 'AppleKeyboardUIMode'
  type 'int'
  value '3'
  global? true
end

#TODO: Broken
dep 'disable-auto-correct.defaults' do
  key 'NSAutomaticSpellingCorrectionEnabled'
  type 'boolean'
  value 'false'
  global? true
end

dep 'osx-settings-keyboard' do
  requires 'keyboard-enable-function-keys.defaults'
  requires 'keyboard-enable-ui-full-control.defaults'
end
