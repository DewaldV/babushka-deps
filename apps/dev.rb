# dev.rb

dep 'android.bin' do
  installs 'android-sdk'
end

dep 'ansible.bin'

dep 'bzr.bin' do
  installs 'bazaar'
end

dep 'docker.bin'

dep 'go.bin'

dep 'gradle.bin'

dep 'hg.bin' do
  installs 'mercurial'
end

dep 'intellij-idea.cask'

dep 'io.bin'

dep 'java.cask'

dep 'lein.bin' do
  installs 'leiningen'
end

dep 'maven.bin'

dep 'node.bin'

dep 'pebble.bin' do
  installs 'pebble-sdk'
end

dep 'pry.bin'

dep 'rbenv.bin'

dep 'ruby-build.bin'

dep 'rbenv-gem-rehash.lib'

dep 'vagrant.cask'

dep 'virtualbox.cask'

dep 'osx-dev-android' do
  requires 'osx-dev-java'
  requires 'android.bin'
end

dep 'osx-dev-clojure' do
  requires 'osx-dev-java'
  requires 'lein.bin'
end

dep 'osx-dev-java' do
  requires 'java.cask'
  requires 'gradle.bin'
  requires 'maven.bin'
  requires 'intellij-idea.cask'
end

dep 'osx-dev-ruby' do
  requires 'ruby-build.bin'
  requires 'rbenv.bin'
  requires 'rbenv-gem-rehash.lib'
  requires 'pry.bin'
end

dep 'osx-dev-tools' do
  requires 'ansible.bin'
  requires 'docker.bin'
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
  requires 'node.bin'
end

dep 'osx-dev-alt-lang' do
  requires 'io.bin'  
  requires 'go.bin'
  requires 'pebble.bin'
end
