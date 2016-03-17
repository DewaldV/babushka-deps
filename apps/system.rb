# base.rb

dep 'osx-system-all' do
  requires 'osx-core-apps'
  requires 'osx-core-apps-extras'
end

dep 'osx-system' do
  requires 'osx-system-menu'
  requires 'osx-system-time-tracking'
end

dep 'osx-system-extras' do
  requires 'osx-system-windows'
  requires 'osx-system-x11'
end
