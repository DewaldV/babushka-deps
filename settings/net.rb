# net.rb

dep 'hostname' do
  met? { shell("hostname") == "virtue.local" }
  meet { sudo("scutil --set HostName virtue.local") }
end
