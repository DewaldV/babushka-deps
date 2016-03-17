# groovy.rb

dep 'groovysdk.lib'

dep 'osx-dev-groovy' do
  requires 'osx-dev-java-base'
  requires 'groovysdk.lib'
end

dep 'osx-dev-groovy-ide' do
  requires 'osx-dev-groovy'
  requires 'intellij-idea.cask'
end
