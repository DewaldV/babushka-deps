# net.rb

dep 'cntlm.bin'

dep 'firefox.cask'

dep 'fuze.cask'

dep 'gpg.bin' do
  installs 'gnupg'
end

dep 'google-chrome.cask'

dep 'google-drive.cask'

dep 'irssi.bin'

dep 'keybase.bin'

dep 'little-snitch.cask'

dep 'nginx.bin'

dep 'opera.cask'

dep 'skype.cask'

dep 'slack.cask'

dep 'transmission.cask'

dep 'osx-net-services' do
  requires 'cntlm.bin'
  requires 'google-drive.cask'
  requires 'little-snitch.cask'
end

dep 'osx-net-alt-browsers' do
  requires 'firefox.cask'
  requires 'google-chrome.cask'
  requires 'opera.cask'
end

dep 'osx-net-im' do
  requires 'irssi.bin'
  requires 'slack.cask'
end

dep 'osx-net-voip' do
  requires 'fuze.cask'
  requires 'skype.cask'
end

dep 'osx-net-servers' do
  requires 'nginx.bin'
end
