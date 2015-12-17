# osx-defaults.rb

meta :defaults do
  accepts_value_for :domain
  accepts_value_for :key
  accepts_value_for :type
  accepts_value_for :value
  accepts_value_for :global?
  accepts_value_for :doSudo?

  template do
    global = 'NSGlobalDomain'
    setup { @key = key || name }
    met? { shell?("defaults read #{global? ? global : ''} #{domain} #{@key}", sudo: doSudo?) && shell("defaults read #{global? ? global : ''} #{domain} #{@key}", sudo: doSudo?) == value }
    meet { shell("defaults write #{global? ? global : ''} #{domain} #{@key} -#{type} #{value}", sudo: doSudo?) }
  end
end
