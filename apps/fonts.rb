# fonts.rb
dep 'font-open-sans.cask'

dep 'font-hack.cask'

dep 'osx-fonts' do
  requires 'font-open-sans.cask'
  requires 'font-hack.cask'
end
