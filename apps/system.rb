# base.rb

dep 'osx-system-all' do
  requires 'osx-system'
  requires 'osx-system-extras'
end

dep 'osx-system' do
end

dep 'osx-system-extras' do
  requires 'osx-system-time-tracking'
  requires 'osx-system-windows'
  requires 'osx-system-x11'
end
