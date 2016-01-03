meta :defaults do
  accepts_value_for :domain
  accepts_value_for :key
  accepts_value_for :type
  accepts_value_for :value
  accepts_value_for :currentHost?
  accepts_value_for :global?
  accepts_value_for :doSudo?

  template do
    setup { @key = key || name }
    met? do
      cmd = command('read', domain, @key)
      shell?(cmd, sudo: doSudo?) && checkValue(shell(cmd, sudo: doSudo?))
    end

    def checkValue(retValue)
      value.split.any? { |val| retValue.include?(val) }
    end

    meet do
      cmd = command('write', domain, @key, type, value)
      shell(cmd, sudo: doSudo?)
    end

    def command(rw, dom, key, type = nil, value = nil)
      "defaults #{strHost} #{rw} #{strDom(dom)} #{key} #{strType(type)} #{strVal(value)}"
    end

    def strHost
      "-currentHost" if currentHost?
    end

    def strType(t)
      "-#{t}" unless t.nil?
    end

    def strVal(v)
      v unless v.nil?
    end

    def strDom(dom)
      global? ? 'NSGlobalDomain' : dom
    end
  end
end
