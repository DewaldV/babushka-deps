# keyboard.rb

dep 'keyboard-enable-function-keys.defaults' do
  key 'com.apple.keyboard.fnState'
  type 'int'
  value '1'
  global? true
  doSudo? true
end

dep 'disable-auto-correct.defaults' do
  key 'NSAutomaticSpellingCorrectionEnabled'
  type 'int'
  value '0'
  global? true
  doSudo? true
end

dep 'osx-settings-keyboard' do
  requires 'keyboard-enable-function-keys.defaults'
  requires 'disable-auto-correct.defaults'
end
