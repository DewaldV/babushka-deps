# system.rb

dep 'save-to-disk.defaults' do
  key 'NSDocumentSaveNewDocumentsToCloud'  
  type 'int'
  value '0'
  global? true
  doSudo? true
end

dep 'disable-quarantine.defaults' do
  key 'LSQuarantine'
  domain 'com.apple.LaunchServices'
  type 'int'
  value '0'
end

dep 'show-admin-host-info.defaults' do
  key 'AdminHostInfo'
  domain '/Library/Preferences/com.apple.loginwindow.plist'
  type 'string'
  value 'HostName'
  doSudo? true
end

dep 'check-updates-daily.defaults' do
  key 'ScheduleFrequency'
  domain 'com.apple.SoftwareUpdate'
  type 'int'
  value '1'
end

dep 'disable-smart-quotes.defaults' do
  key 'NSAutomaticQuoteSubstitutionEnabled'
  global? true
  type 'int'
  value '0'
  doSudo? true
end

dep 'disable-smart-dashes.defaults' do
  key 'NSAutomaticDashSubstitutionEnabled'
  global? true
  type 'int'
  value '0'
  doSudo? true
end

dep 'osx-settings-system' do
  requires 'save-to-disk.defaults'
  requires 'disable-quarantine.defaults'
#  requires 'show-admin-host-info.defaults'
  requires 'check-updates-daily.defaults'
#  requires 'disable-smart-quotes.defaults'
#  requires 'disable-smart-dashes.defaults'
end

# Disable local Time Machine snapshots
#sudo tmutil disablelocal
