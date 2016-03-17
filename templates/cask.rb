#Totally cribbed from https://github.com/icelab/babushka-deps/blob/master/homebrew_cask.rb
meta :cask do
  accepts_list_for :installs, :basename

  template {
    requires CaskHelper.manager_dep

    met? {
      installs.all? { |pkg| CaskHelper.has?(pkg) }
    }
    meet {
      CaskHelper.handle_install! installs
    }
  }
end
