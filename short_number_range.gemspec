
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "short_number_range/version"

Gem::Specification.new do |spec|
  spec.name          = "short_number_range"
  spec.version       = ShortNumberRange::VERSION
  spec.authors       = ["sivamanikandan"]
  spec.email         = ["siv.mca19.gmail.com"]

  spec.summary       = %q{ To short the input range of numbers.}
  spec.description   = %q{ To short the input range of numbers.}
  spec.homepage      = "https://rubygems.org/profiles/siva_mca"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
