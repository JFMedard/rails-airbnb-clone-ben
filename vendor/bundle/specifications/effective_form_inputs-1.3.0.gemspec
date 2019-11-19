# -*- encoding: utf-8 -*-
# stub: effective_form_inputs 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "effective_form_inputs".freeze
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Code and Effect".freeze]
  s.date = "2019-08-06"
  s.description = "Collection of Form Inputs".freeze
  s.email = ["info@codeandeffect.com".freeze]
  s.homepage = "https://github.com/code-and-effect/effective_form_inputs".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Collection of Form Inputs".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 3.2.0"])
      s.add_runtime_dependency(%q<simple_form>.freeze, [">= 3.1.0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 3.2.0"])
      s.add_dependency(%q<simple_form>.freeze, [">= 3.1.0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.2.0"])
    s.add_dependency(%q<simple_form>.freeze, [">= 3.1.0"])
  end
end
