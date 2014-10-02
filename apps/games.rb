# games.rb

dep 'desmume.cask'

dep 'steam.cask'

dep 'osx-games-all' do
  requires 'desmume.cask'
  requires 'steam.cask'
end
