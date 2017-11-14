# tools.rb
dep 'gcat.bin' do
  installs 'coreutils'
end

dep 'atom.cask'

dep 'htop.bin'

dep 'iterm2.cask'

dep 'the_silver_searcher.bin'

dep 'tree.bin'

dep 'vim.bin'

dep 'wget.bin'

dep 'zsh.bin'

dep 'osx-tools' do
  requires 'gcat.bin'
  requires 'htop.bin'
  requires 'iterm2.cask'
  requires 'atom.cask'
  requires 'tree.bin'
  requires 'vim.bin'
  requires 'wget.bin'
  requires 'zsh.bin'
end
