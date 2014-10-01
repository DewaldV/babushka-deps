# base.rb

dep 'homebrew-cask.lib' do
  installs 'brew-cask'
end

dep 'dockutil.bin'

dep 'dropbox.cask'

dep 'htop.bin' do
  installs 'htop-osx'
end

dep 'iterm2.cask'

dep 'mvim.bin' do
  installs 'macvim'
end

dep 'onepassword.cask'

dep 'rescuetime.cask'

dep 'spectacle.cask'

dep 'vim.bin'

dep 'xquartz.cask'

dep 'zsh.bin' 

dep 'osx-core-all' do
  requires 'osx-core-apps'
  requires 'osx-core-apps-extended'
end

dep 'osx-core-apps' do
  requires 'homebrew-cask.lib'
  requires 'dockutil.bin'
  requires 'dropbox.cask'
  requires 'htop.bin'
  requires 'iterm2.cask'
  requires 'onepassword.cask'
  requires 'vim.bin'
  requires 'zsh.bin'
end

dep 'osx-core-apps-extended' do
  requires 'rescuetime.cask'
  requires 'spectacle.cask'
  requires 'xquartz.cask'
end
