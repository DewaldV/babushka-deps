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
    met? do
      command = "defaults read #{global? ? global : ''} #{domain} #{@key}"
      shell?(command, sudo: doSudo?) && shell(command, sudo: doSudo?) == value
    end
    meet do
      command = "defaults write #{global? ? global : ''} #{domain} #{@key} -#{type} #{value}"
      shell(command, sudo: doSudo?)
    end
  end
end
