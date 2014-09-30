# osx-scutil.rb

meta :scutil do
  accepts_value_for :perf
  accepts_value_for :value

  template {
    met? { shell("scutil --get #{perf}") == value }
    meet { sudo("scutil --set #{perf} #{value}") }
  }
end
