# net.rb

dep 'net-hostname.scutil' do
  perf 'HostName'
  value 'DewaldV-MBP'
end

dep 'net-computername.scutil' do
  perf 'ComputerName'
  value 'DewaldV-MBP'
end

dep 'net-localhostname.scutil' do
  perf 'LocalHostName'
  value 'DewaldV-MBP'
end

dep 'osx-settings-net' do
  requires 'net-hostname.scutil'
  requires 'net-computername.scutil'
  requires 'net-localhostname.scutil'
end
