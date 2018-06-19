# ruby.rb

dep 'pry.bin'

dep 'rbenv.bin'

dep 'ruby-build.bin'

dep 'rubymine.cask'

dep 'osx-dev-ruby' do
  requires 'ruby-build.bin'
  requires 'rbenv.bin'
end

dep 'osx-dev-ruby-ide' do
  requires 'osx-dev-ruby'
  requires 'rubymine.cask'
end
