# drive.rb

dep 'dropbox.cask'

dep 'google-drive.cask'

dep 'osx-net-drive' do
  requires 'dropbox.cask'
  requires 'google-drive.cask'
end
