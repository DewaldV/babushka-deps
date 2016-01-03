# base.rb

dep 'homebrew-cask.lib' do
  requires 'homebrew tap'.with('caskroom/cask')
  requires 'homebrew tap'.with('caskroom/fonts')
  requires 'homebrew tap'.with('homebrew/versions')
  installs 'brew-cask'
end

dep '1password.cask'

dep 'dockutil.bin'

dep 'dropbox.cask'

dep 'gpgtools.cask'

dep 'htop.bin' do
  installs 'htop-osx'
end

dep 'tree.bin'

dep 'iterm2.cask'

dep 'istat-menus.cask'

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
  requires '1password.cask'
  requires 'dockutil.bin'
  requires 'dropbox.cask'
  requires 'gpgtools.cask'
  requires 'htop.bin'
  requires 'tree.bin'
  requires 'istat-menus.cask'
  requires 'iterm2.cask'
  requires 'vim.bin'
  requires 'zsh.bin'
  requires 'osx-fonts'
end

dep 'osx-core-apps-extended' do
  requires 'rescuetime.cask'
  requires 'spectacle.cask'
  requires 'xquartz.cask'
end
