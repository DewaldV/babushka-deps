dep "dock-autohide.defaults" do
  key "autohide"
  domain "com.apple.dock"
  type "int"
  value "1"
  after { "killall -HUP Dock" }
end 

dep "dashboard-disable.defaults" do
  key "mcx-disabled"
  domain "com.apple.dashboard"
  type "int"
  value "1"
  after { "killall -HUP Dock" }
end

dep "keyboard-enable-function-keys.defaults" do
  key "com.apple.keyboard.fnState"
  type "int"
  value "1"
  global? true
end

dep "osx-settings" do
  requires "dock-autohide.defaults"
  requires "dashboard-disable.defaults"
  requires "keyboard-enable-function-keys.defaults"
end
