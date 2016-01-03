meta :scutil do
  accepts_value_for :perf
  accepts_value_for :value

  template do
    met? do
      cmd = "scutil --get #{perf}"
      shell?(cmd) && shell(cmd) == value
    end
    meet do
      sudo("scutil --set #{perf} #{value}")
    end
  end
end
