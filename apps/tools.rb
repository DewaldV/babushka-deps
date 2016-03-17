# tools.rb
dep 'gcat.bin' do
  installs 'coreutils'
end

dep 'htop.bin'

dep 'iterm2.cask'

dep 'tree.bin'

dep 'vim.bin'

dep 'wget.bin'

dep 'zsh.bin'

dep 'osx-tools' do
  requires 'gcat.bin'
  requires 'htop.bin'
  requires 'iterm2.cask'
  requires 'tree.bin'
  requires 'vim.bin'
  requires 'wget.bin'
  requires 'zsh.bin'
end
