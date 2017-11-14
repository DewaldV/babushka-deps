#Totally cribbed from https://github.com/icelab/babushka-deps/blob/master/homebrew_cask.rb
class CaskHelper < Babushka::BrewHelper
  class << self
    def pkg_cmd; 'brew cask' end
    def manager_dep; 'homebrew-cask-taps' end
    def pkg_type; :cask end
    def manager_key; :cask end

    def present?
      Babushka::BrewHelper.has?("brew-cask")
    end

    def prefix
      Babushka::BrewHelper.prefix
    end

    def caskroom
      "/usr/local/Caskroom".p
    end

    def should_sudo?
      false
    end

    private

    def has_pkg?(pkg)
      all_versions_of(pkg).any?
    end

    def all_versions_of(pkg)
      pkg_name = pkg.respond_to?(:name) ? pkg.name : pkg
      Dir[
        installed_pkgs_path / pkg_name / '*'
      ].map {|i|
        File.basename i.chomp('/')
      }.map(&:to_s)
    end

    def pkg_update_command
      "brew update"
    end

    def cmdline_spec_for(pkg)
      pkg.name
    end

    def installed_pkgs_path
      caskroom
    end
  end
end

Babushka::PkgHelper.all_manager_keys << CaskHelper.manager_key
