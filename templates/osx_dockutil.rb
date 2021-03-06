meta :dockicon do
  accepts_value_for :label
  accepts_value_for :path

  template do
    met? { !Dir.exist?(File.expand_path(path)) || shell?("dockutil --find #{label}") }
    meet { shell("dockutil --add #{path} --label #{label}") }
  end
end
