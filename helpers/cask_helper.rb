# A PkgHelper for managing Homebrew Cask packages
# Original from: https://github.com/bradfeehan/babushka-deps
class CaskHelper < Babushka::BrewHelper
  class << self
    def pkg_cmd
      'brew cask'
    end

    def manager_dep
      'homebrew-cask.lib'
    end

    def pkg_type
      :cask
    end

    def manager_key
      :cask
    end

    def present?
      Babushka::BrewHelper.has? cask_package_name
    end

    def prefix
      Babushka::BrewHelper.prefix
    end

    def cask_package_name
      'brew-cask'
    end

    def all_versions_of(pkg)
      pkg_name = pkg.respond_to?(:name) ? pkg.name : pkg
      Dir[
        installed_pkgs_path / pkg_name / '*'
      ].map do|i|
        File.basename i.chomp('/')
      end.map(&:to_s)
    end

    def cask_prefix
      Babushka::BrewHelper.brew_path_for cask_package_name
    end

    def caskroom
      '/opt/homebrew-cask/Caskroom'.p
    end

    private

    def has_pkg?(pkg)
      all_versions_of(pkg).any?
    end

    def pkg_update_command
      'brew update'
    end

    def cmdline_spec_for(pkg)
      pkg.name
    end

    def existing_formulas
      Dir[formulas_path / '*.rb']
    end

    def installed_pkgs_path
      caskroom
    end

    def formulas_path
      cask_prefix / 'Casks'
    end
  end
end

Babushka::PkgHelper.all_manager_keys << CaskHelper.manager_key
