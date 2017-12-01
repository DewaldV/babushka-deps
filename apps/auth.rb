# auth.rb

dep '1password.cask'

dep 'ykman.bin'

dep 'osx-auth' do
  requires '1password.cask'
  requires 'ykman.bin'
end
