# regional.rb

dep 'osx-locale.defaults' do
  key 'AppleLanguages'
  global? true
  type 'array'
  value 'en_ZA'
end

dep 'osx-measurementunits.defaults' do
  key 'AppleMeasurementUnits'
  global? true
  type 'string'
  value 'Centimeters'
end

dep 'osx-metricunits.defaults' do
  key 'AppleMetricUnits'
  global? true
  type 'int'
  value '1'
end

dep 'osx-force24hour.defaults' do
  key 'AppleICUForce24HourTime'
  global? true
  type 'int'
  value '1'
end

dep 'timezone' do
  met? { sudo('systemsetup -gettimezone') == 'Time Zone: Africa/Johannesburg' }
  meet { sudo('systemsetup -settimezone Africa/Johannesburg') }
end

dep 'osx-settings-regional' do
#  requires 'osx-locale.defaults'
  requires 'osx-measurementunits.defaults'
  requires 'osx-metricunits.defaults'
  requires 'timezone'
end

#defaults write NSGlobalDomain AppleLanguages -array "en" "nl"
