# auth.rb

dep '1password.cask'

dep '1password-cli.cask'

dep 'ykman.bin'

dep 'osx-auth' do
  requires '1password.cask'
  requires '1password-cli.cask'
  requires 'ykman.bin'
end
