# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cleber_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "cleber_view_tool"
  spec.version       = CleberViewTool::VERSION
  spec.authors       = ["Cleber Albuquerque"]
  spec.email         = ["cleber@slatedev.com"]

  spec.summary       = %q{Testing how to create a gem}
  spec.description   = %q{This is just a test how to create a gem}
  spec.homepage      = "http://cleber.io"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
