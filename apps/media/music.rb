# music.rb

dep 'marshallofsound-google-play-music-player.cask'

dep 'osx-media-music' do
  requires 'marshallofsound-google-play-music-player.cask'
end
