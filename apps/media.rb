# media.rb

dep 'adobe-reader.cask'

dep 'gimp.cask'

dep 'inkscape.cask'

dep 'rdio.cask'

dep 'tagger.cask'

dep 'vlc.cask'

dep 'osx-media-all' do
  requires 'adobe-reader.cask'
  requires 'osx-media-music'
  requires 'osx-media-video'
end

dep 'osx-media-music' do
  requires 'rdio.cask'
  requires 'tagger.cask'
end

dep 'osx-media-video' do
  requires 'vlc.cask'
end

dep 'osx-media-imaging' do
  requires 'gimp.cask'
  requires 'inkscape.cask'
end
