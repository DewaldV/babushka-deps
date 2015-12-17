# Original from: https://github.com/bradfeehan/babushka-deps
meta :cask do
  accepts_list_for :installs, :basename, choose_with: :via

  template do
    requires CaskHelper.manager_dep
    met? { installs.all? { |pkg| CaskHelper.has?(pkg) } }
    meet { CaskHelper.handle_install! installs }
  end
end
