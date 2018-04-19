# tools.rb
dep 'ag.bin' do
  installs 'the_silver_searcher'
end

dep 'atom.cask'

dep 'cfssl.bin'

dep 'gcat.bin' do
  installs 'coreutils'
end

dep 'htop.bin'

dep 'iterm2.cask'

dep 'jq.bin'

dep 'tmux.bin'

dep 'tree.bin'

dep 'vim.bin'

dep 'wget.bin'

dep 'watch.bin'

dep 'zsh.bin'

dep 'osx-tools' do
  requires 'ag.bin'
  requires 'atom.cask'
  requires 'cfssl.bin'
  requires 'gcat.bin'
  requires 'htop.bin'
  requires 'iterm2.cask'
  requires 'jq.bin'
  requires 'tmux.bin'
  requires 'tree.bin'
  requires 'vim.bin'
  requires 'wget.bin'
  requires 'watch.bin'
  requires 'zsh.bin'
end
