# infrastructure.rb

dep 'ansible.bin'

dep 'heroku.bin' do
  requires 'heroku-toolbelt'
end

dep 'osx-dev-infrastructure' do
  requires 'ansible.bin'
end

dep 'osx-dev-infrastructure-extras' do
  requires 'heroku.bin'
end
