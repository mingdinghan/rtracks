# frozen_string_literal: true

require_relative "lib/rtracks/version"

Gem::Specification.new do |spec|
  spec.name          = "rtracks"
  spec.version       = Rtracks::VERSION
  spec.authors       = ["Mingding Han"]
  spec.email         = ["mingdinghan@gmail.com"]

  spec.summary       = "Rtracks is a small MVC web framework similar to Ruby on Rails"
  spec.description   = "Rtracks is an MVC web framework that is a smaller version of Ruby on Rails, built from scratch."
  spec.homepage      = "https://github.com/mingdinghan/rtracks"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mingdinghan/rtracks"
  spec.metadata["changelog_uri"] = "https://github.com/mingdinghan/rtracks"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rack", "~> 2.2"
  spec.add_development_dependency "rack-test", "~> 1.1"
  spec.add_development_dependency "minitest", "~> 5.14"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
