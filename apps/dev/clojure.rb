# clojure.rb

dep 'lein.bin' do
  installs 'leiningen'
end

dep 'osx-dev-clojure' do
  requires 'osx-dev-java-base'
  requires 'lein.bin'
end

dep 'osx-dev-clojure-ide' do
  requires 'osx-dev-clojure'
  requires 'intellij-idea.cask'
end
