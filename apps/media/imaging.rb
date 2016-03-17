# imaging.rb

dep 'colorpicker-antetype.cask'

dep 'gimp.cask'

dep 'osx-media-imaging' do
  requires 'colorpicker-antetype.cask'
  requires 'gimp.cask'
end
