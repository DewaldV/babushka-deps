# music.rb

dep 'deezer.cask'

dep 'tagger.cask'

dep 'osx-media-music' do
  requires 'deezer.cask'
end
