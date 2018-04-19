# gpg.rb

dep 'gpg-suite.cask'

dep 'keybase.cask'

dep 'osx-net-gpg' do
  requires 'gpg-suite.cask'
  requires 'keybase.cask'
end
