# browsers.rb

dep 'firefox.cask'

dep 'google-chrome.cask'

dep 'opera.cask'

dep 'osx-net-browsers' do
  requires 'google-chrome.cask'
end

dep 'osx-net-browsers-extras' do
  requires 'firefox.cask'
  requires 'opera.cask'
end
