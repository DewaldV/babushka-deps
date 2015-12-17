# osx-dockutil.rb

meta :dockicon do
  accepts_value_for :label
  accepts_value_for :path

  template do
    met? { !shell?("[ -d #{path} ]") || shell?("dockutil --find #{label}") }
    meet { shell("dockutil --add #{path} --label #{label}") }
  end
end
