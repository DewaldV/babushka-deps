# games.rb

dep 'desmume.cask'

dep 'steam.cask'

dep 'osx-games' do
  requires 'desmume.cask'
  requires 'steam.cask'
end
