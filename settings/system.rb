# system.rb

dep 'disable-smart-quotes.defaults' do
  key 'NSAutomaticQuoteSubstitutionEnabled'
  global? true
  type 'int'
  value '0'
end

dep 'disable-smart-dashes.defaults' do
  key 'NSAutomaticDashSubstitutionEnabled'
  global? true
  type 'int'
  value '0'
end

dep 'osx-settings-system' do
  requires 'disable-smart-quotes.defaults'
  requires 'disable-smart-dashes.defaults'
end
