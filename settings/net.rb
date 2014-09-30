# net.rb

dep 'hostname' do
  met? { shell('hostname') == 'virtue.local' }
  meet { sudo('scutil --set HostName virtue.local') }
end



#sudo scutil --set ComputerName '0x6D746873'
#sudo scutil --set HostName '0x6D746873'
#sudo scutil --set LocalHostName '0x6D746873'
