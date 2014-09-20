dep "autohide", :template => "defaults" do
  domain "com.apple.dock"
  type "int"
  value "1"
  after { "killall -HUP Dock" }
end 

dep "mcx-disabled", :template => "defaults" do
  domain "com.apple.dashboard"
  type "int"
  value "1"
  after { "killall -HUP Dock" }
end

dep "com.apple.keyboard.fnState", :template => "defaults" do
  type "int"
  value "1"
  global? true
end

dep "osx-settings" do
  requires "autohide"
  requires "mcx-disabled"
  requires "com.apple.keyboard.fnState"
end
