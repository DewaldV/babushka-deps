# dev.rb

dep 'osx-dev-all' do
  requires 'osx-dev'
  requires 'osx-dev-extras'
  requires 'osx-dev-extras-jvm'
end

dep 'osx-dev' do
  requires 'osx-dev-scm'
  requires 'osx-dev-ruby'
end

dep 'osx-dev-extras' do
  requires 'osx-dev-infrastructure'
  requires 'osx-dev-java'
  requires 'osx-dev-javascript'
  requires 'osx-dev-python'
end

dep 'osx-dev-extras-jvm' do
  requires 'osx-dev-clojure'
  requires 'osx-dev-groovy'
  requires 'osx-dev-scala'
end
