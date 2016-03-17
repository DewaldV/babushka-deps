# javascript.rb

dep 'nodenv.bin'

dep 'node-build.bin'

dep 'osx-dev-javascript' do
  requires 'node-build.bin'
  requires 'nodenv.bin'
end
