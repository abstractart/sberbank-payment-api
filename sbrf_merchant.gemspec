lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sbrf_merchant/version'

Gem::Specification.new do |spec|
  spec.name          = 'sbrf_merchant'
  spec.version       = SbrfMerchant::VERSION
  spec.authors       = ['Eugene Kozlov']
  spec.email         = ['kozlovea8@gmail.com']

  spec.summary       = 'Sberbank Merchant API Client for Ruby'
  spec.description   = ''
  spec.homepage      = 'https://github.com/abstractart/sbrf_merchant'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_runtime_dependency 'activesupport'
  spec.add_runtime_dependency 'dry-auto_inject'
  spec.add_runtime_dependency 'faraday'
  spec.add_runtime_dependency 'json'
end