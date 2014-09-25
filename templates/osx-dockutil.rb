# osx-dockutil.rb

meta :dockicon do
  accepts_value_for :label
  accepts_value_for :path

  template {
    met? { shell?("dockutil --find #{label}") }
    meet { shell("dockutil --add #{path} --label #{label}") }
  }
end
