
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "renopertymdb/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "renopertymdb"
  spec.version     = Renopertymdb::VERSION
  spec.authors     = [""]
  spec.email       = [""]

  spec.homepage    = ""
  spec.summary     = "material design for bootstrap pro based gem"
  spec.description = ""
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com/TakuAkahane/rcmdb"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = 'git ls-files -z'.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'railties'
end
