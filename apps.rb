# apps.rb

dep "zsh.bin" do
  installs "zsh"
end

dep "ack.bin" do
  installs "ack"
end

dep "all-packaged-apps" do
  requires "zsh.bin"
  requires "ack.bin"
end
