# scala.rb

dep 'scalaenv.bin'

dep 'sbt.bin'

dep 'osx-dev-scala' do
  requires 'osx-dev-java-base'
  requires 'scalaenv.bin'
  requires 'sbt.bin'
end

dep 'osx-dev-scala-ide' do
  requires 'osx-dev-scala'
  requires 'intellij-idea.cask'
end
