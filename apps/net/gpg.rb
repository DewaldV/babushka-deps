# gpg.rb

dep 'gpg2.bin' do
  installs 'gpg2'
end

dep 'gpgtools.cask'

dep 'keybase.bin'

dep 'osx-net-gpg' do
  requires 'gpg2.bin'
  requires 'gpgtools.cask'
  requires 'keybase.bin'
end
