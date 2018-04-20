# base_deps.rb

dep 'homebrew-cask-taps' do
  requires 'homebrew tap'.with('caskroom/cask')
  requires 'homebrew tap'.with('caskroom/fonts')
end

dep 'dockutil.bin'

dep 'osx-core-deps' do
  requires 'homebrew-cask-taps'
  requires 'dockutil.bin'
end
