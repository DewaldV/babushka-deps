# net.rb

dep 'firefox.cask'

dep 'fuze.cask'

dep 'google-chrome.cask'

dep 'google-drive.cask'

dep 'irssi.bin'

dep 'nginx.bin'

dep 'opera.cask'

dep 'skype.cask'

dep 'slack.cask'

dep 'teamspeak-client.cask'

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
  requires 'teamspeak-client.cask'
end

dep 'osx-net-servers' do
  requires 'nginx.bin'
end
