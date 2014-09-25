# osx-dockutil.rb

meta :dockicon do
  accepts_value_for :name
  accepts_value_for :path

  template {
    met? { shell?("dockutil --find #{name}") }
    meet { shell("dockutil --add #{path} --label #{name}") }
  }
end
