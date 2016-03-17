# osx-base.rb

dep 'osx-core' do
  requires 'osx-core-deps'
  requires 'osx-dev'
  requires 'osx-fonts'
  requires 'osx-net'
  requires 'osx-system'
  requires 'osx-tools'
  requires 'osx-virt'
  requires 'osx-settings'
end

dep 'osx-extras' do
  requires 'osx-media'
  requires 'osx-dev-extras'
end
