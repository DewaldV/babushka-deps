# infrastructure.rb

dep 'ansible.bin'

dep 'terraform.bin'

dep 'osx-dev-infra' do
  requires 'terraform.bin'
end

dep 'osx-dev-infra-extra' do
  requires 'ansible.bin'
end
