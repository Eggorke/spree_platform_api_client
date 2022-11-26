# frozen_string_literal: true

require_relative "lib/spree_platform_api_client/version"

Gem::Specification.new do |spec|
  spec.name = "spree_platform_api_client"
  spec.version = SpreePlatformApiClient::VERSION
  spec.authors = ["egor.shalamov"]
  spec.email = ["egor.shalamov@jetruby.com"]

  spec.summary = "Simple Spree Platform Api Client"
  spec.description = "This gem allows to make api calls to the spree platform API"
  spec.homepage = "https://github.com/Eggorke/spree_platform_api_client"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir['CHANGELOG', 'README.md', 'MIT-LICENSE', 'lib/**/*']
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "http", "~> 5.1.0"
  spec.add_dependency "anyway_config", ">= 2.0.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
