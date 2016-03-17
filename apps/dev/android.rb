# android.rb

dep 'android.bin' do
  installs 'android-sdk'
end

dep 'android-studio.cask'

dep 'osx-dev-android' do
  requires 'osx-dev-java-base'
  requires 'android.bin'
end

dep 'osx-dev-android-ide' do
  requires 'osx-dev-android'
  requires 'android-studio.cask'
end
