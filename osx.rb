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

dep "auto-hide-dock" do
  met? {
    shell("defaults read com.apple.dock autohide") == "1"
  }

  meet {
    shell("defaults write com.apple.dock autohide -bool true")
    shell("killall -HUP Dock")
  }
end

dep "disable-dashboard" do
  met? {
    shell("defaults read com.apple.dashboard mcx-disabled") == "1"
  }
defaults write com.apple.dashboard mcx-disabled -boolean-neg

dep "all-osx-settings" do
  requires "auto-hide-dock"
end
