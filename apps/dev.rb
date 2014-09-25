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

dep 'rbenv.bin'

dep 'ruby-build.bin'

dep 'rbenv-gem-rehash.lib'

dep 'vagrant.cask'

dep 'virtualbox.cask'
