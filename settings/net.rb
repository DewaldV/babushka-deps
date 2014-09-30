# net.rb

dep 'net-hostname.scutil' do
  perf 'HostName'
  value 'virtue'
end

dep 'net-computername.scutil' do
  perf 'ComputerName'
  value 'virtue'
end

dep 'net-localhostname.scutil' do
  perf 'LocalHostName'
  value 'virtue'
end

dep 'osx-settings-net' do
  requires 'net-hostname.scutil'
  requires 'net-computername.scutil'
  requires 'net-localhostname.scutil'
end
