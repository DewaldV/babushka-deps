# media.rb

dep 'adobe-reader.cask'

dep 'colorpicker-antetype.cask'

dep 'gimp.cask'

dep 'deezer.cask'

dep 'vlc.cask'

dep 'osx-media-all' do
  requires 'adobe-reader.cask'
  requires 'osx-media-music'
  requires 'osx-media-video'
end

dep 'osx-media-music' do
  requires 'deezer.cask'
end

dep 'osx-media-video' do
  requires 'vlc.cask'
end

dep 'osx-media-imaging' do
  requires 'gimp.cask'
  requires 'colorpicker-antetype.cask'
end
