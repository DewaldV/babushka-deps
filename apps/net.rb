# net.rb

dep 'firefox.cask'

dep 'google-chrome.cask'

dep 'irssi.bin'

dep 'nginx.bin'

dep 'opera.cask'

dep 'skype.cask'

dep 'teamspeak-client.cask'

dep 'osx-net-alt-browsers' do
  requires 'firefox.cask'
  requires 'google-chrome.cask'
  requires 'opera.cask'
end

dep 'osx-net-im' do
  requires 'irssi.bin'
end

dep 'osx-net-voip' do
  requires 'skype.cask'
  requires 'teamspeak-client.cask'
end

dep 'osx-net-servers' do
  requires 'nginx.bin'
end
