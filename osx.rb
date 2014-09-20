# osx.rb

dep "Dropbox.app" do
  source "https://www.dropbox.com/download?plat=mac"
end

dep "iTerm.app" do
  source "http://iterm2.com/downloads/stable/iTerm2_v1_0_0.zip"
end

dep "all-osx-apps" do
  requires "Dropbox.app"
  requires "iTerm.app"
end
