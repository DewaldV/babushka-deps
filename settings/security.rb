# security.rb

dep 'ask-for-password.defaults' do
  key 'askForPassword'
  domain 'com.apple.screensaver'
  type 'int'
  value '1'
end

dep 'ask-for-password-delay.defaults' do
  key 'askForPasswordDelay'
  domain 'com.apple.screensaver'
  type 'int'
  value '0'
end

dep 'osx-settings-security' do
  requires 'ask-for-password.defaults'
  requires 'ask-for-password-delay.defaults'
end
