# java.rb

dep 'gradle.bin'

dep 'intellij-idea.cask'

dep 'java.cask'

dep 'jenv.bin'

dep 'mvn.bin' do
  installs 'maven'
end

dep 'osx-dev-java-base' do
  requires 'java.cask'
  requires 'jenv.bin'
end

dep 'osx-dev-java' do
  requires 'osx-dev-java-base'
  requires 'gradle.bin'
  requires 'mvn.bin'
end

dep 'osx-dev-java-ide' do
  requires 'osx-dev-java'
  requires 'intellij-idea.cask'
end
