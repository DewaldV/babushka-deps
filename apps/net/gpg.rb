# gpg.rb

dep 'gpg.bin' do
  installs 'gnupg'
end

dep 'gpg-suite.cask'

dep 'keybase.bin'

dep 'osx-net-gpg' do
  requires 'gpg.bin'
  requires 'gpg-suite.cask'
end
