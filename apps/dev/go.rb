# go.rb

dep 'dep.bin'
dep 'go.bin'
dep 'goland.cask'
dep 'upx.bin'

dep 'osx-dev-go' do
  requires 'go.bin'
  requires 'upx.bin'
  requires 'dep.bin'
end

dep 'osx-dev-go-ide' do
  requires 'osx-dev-go'
  requires 'goland.cask'
end
