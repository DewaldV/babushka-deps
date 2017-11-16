# browsers.rb

dep 'firefox.cask'

dep 'google-chrome.cask'

dep 'opera.cask'

dep 'osx-net-browsers' do
  requires 'google-chrome.cask'
  requires 'firefox.cask'
end

dep 'osx-net-browsers-extras' do
  requires 'opera.cask'
end
