# cloud.rb

dep 'aws.bin' do
  installs 'awscli'
end

dep 'google-cloud-sdk.cask'

dep 'osx-net-cloud' do
  requires 'awscli.bin'
  requires 'google-cloud-sdk.cask'
end
