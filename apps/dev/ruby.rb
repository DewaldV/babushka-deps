# ruby.rb

dep 'pry.bin'

dep 'rbenv.bin'

dep 'ruby-build.bin'

dep 'osx-dev-ruby' do
  requires 'ruby-build.bin'
  requires 'rbenv.bin'
end
