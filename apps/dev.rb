# dev.rb

dep 'osx-dev-all' do
  requires 'osx-dev'
  requires 'osx-dev-extras'
  requires 'osx-dev-extras-jvm'
end

dep 'osx-dev' do
  requires 'osx-dev-scm'
  requires 'osx-dev-ruby'
  requires 'osx-dev-python'
  requires 'osx-dev-go'
  requires 'osx-dev-infrastructure'
end

dep 'osx-dev-extras' do
  requires 'osx-dev-java'
  requires 'osx-dev-javascript'
end

dep 'osx-dev-extras-jvm' do
  requires 'osx-dev-clojure'
  requires 'osx-dev-groovy'
  requires 'osx-dev-scala'
end
