# cpp.rb

dep 'gcc-7.bin' do
  installs 'gcc'
end

dep 'osx-dev-cpp' do
  requires 'gcc-5.bin'
end

dep 'osx-dev-cpp-ide' do
  requires 'osx-dev-cpp'
  requires 'clion.cask'
end
