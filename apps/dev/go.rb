# go.rb

dep 'go.bin'
dep 'upx.bin'

dep 'osx-dev-go' do
  requires 'go.bin'
  requires 'upx.bin'
end
