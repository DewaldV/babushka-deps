# dev.rb

dep 'android.bin' do
  installs 'android-sdk'
end

dep 'ansible.bin'

dep 'bzr.bin' do
  installs 'bazaar'
end

dep 'dockertoolbox.cask'

dep 'gcc-5.bin' do
  installs 'gcc'
end

dep 'go.bin'

dep 'gradle.bin'

dep 'groovysdk.lib'

dep 'heroku.bin' do
  requires 'heroku-toolbelt'
end

dep 'hg.bin' do
  installs 'mercurial'
end

dep 'intellij-idea.cask'

dep 'io.bin'

dep 'java.cask'

dep 'jenv.bin'

dep 'lein.bin' do
  installs 'leiningen'
end

dep 'mvn.bin' do
  installs 'maven'
end

dep 'nodenv.bin'

dep 'node-build.bin'

dep 'pebble.bin' do
  installs 'pebble-sdk'
end

dep 'pry.bin'

dep 'pyenv.bin'

dep 'rbenv.bin'

dep 'ruby-build.bin'

dep 'rust.bin'

dep 'vagrant.cask'

dep 'virtualbox.cask'

dep 'osx-dev-android' do
  requires 'osx-dev-java'
  requires 'android.bin'
end

dep 'osx-dev-cpp' do
  requires 'gcc-5.bin'
end

dep 'osx-dev-clojure' do
  requires 'osx-dev-java'
  requires 'lein.bin'
end

dep 'osx-dev-java' do
  requires 'java.cask'
  requires 'jenv.cask'
  requires 'gradle.bin'
  requires 'mvn.bin'
  requires 'intellij-idea.cask'
end

dep 'osx-dev-python' do
  requires 'pyenv.bin'
end

dep 'osx-dev-ruby' do
  requires 'ruby-build.bin'
  requires 'rbenv.bin'
end

dep 'osx-dev-tools' do
  requires 'ansible.bin'
  requires 'dockertoolbox.cask'
  requires 'virtualbox.cask'
  requires 'vagrant.cask'
end

dep 'osx-dev-scm' do
  requires 'git.bin'
end

dep 'osx-dev-scm-extended' do
  requires 'hg.bin'
  requires 'bzr.bin'
end

dep 'osx-dev-js' do
  requires 'node-build.bin'
  requires 'nodenv.bin'
end

dep 'osx-dev-alt-lang' do
  requires 'io.bin'
  requires 'go.bin'
  requires 'pebble.bin'
  requires 'rust.bin'
end
