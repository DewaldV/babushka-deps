# time_tracking.rb

dep 'rescuetime.cask'

dep 'osx-system-time-tracking' do
  requires 'rescuetime.cask'
end
