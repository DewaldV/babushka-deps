# scm.rb

dep 'git.bin'

dep 'hg.bin' do
  installs 'mercurial'
end

dep 'bzr.bin' do
  installs 'bazaar'
end

dep 'osx-dev-scm' do
  requires 'git.bin'
end

dep 'osx-dev-scm-extra' do
  requires 'hg.bin'
  requires 'bzr.bin'
end
