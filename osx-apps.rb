# osx-apps.rb

dep "1Password.app" do
  source ""
end

dep "Adobe Reader.app" do
  source ""
end

dep "MacVim.app" do
  source "https://github.com/b4winckler/macvim/releases/download/snapshot-73/MacVim-snapshot-73-Mavericks.tbz"
end

dep "Dropbox.app" do
  source "https://www.dropbox.com/download?plat=mac"
end

dep "iTerm.app" do
  source "http://iterm2.com/downloads/stable/iTerm2_v1_0_0.zip"
end

dep "RescueTime.app" do
  source "https://www.rescuetime.com/installers/RescueTimeInstaller.dmg"
end

dep "Sublime Text.app" do
  source "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065.dmg"
end

dep "all-osx-apps" do
# requires "1Password.app"
# requires "Adobe Reader.app"
  requires "Dropbox.app"
  requires "iTerm.app"
  requires "MacVim.app"
  requires "RescueTime.app"
  requires "Sublime Text.app"
end
