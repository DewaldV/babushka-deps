# dashboard.rb

dep 'dashboard-disable.defaults' do
  key 'mcx-disabled'
  domain 'com.apple.dashboard'
  type 'int'
  value '1'
  after { 'killall -HUP Dock' }
end
