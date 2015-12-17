# diskutility.rb

dep 'diskutility-enable-advanced.defaults' do
  key 'advanced-image-options'
  domain 'com.apple.DiskUtility'
  type 'int'
  value '1'
end

dep 'diskutility-enable-debug.defaults' do
  key 'DUDebugMenuEnabled'
  domain 'com.apple.DiskUtility'
  type 'int'
  value '1'
end

dep 'osx-settings-diskutility' do
  requires 'diskutility-enable-advanced.defaults'
  requires 'diskutility-enable-debug.defaults'
end
