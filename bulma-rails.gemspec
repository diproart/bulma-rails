# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = 'bulma-rails'
  gem.version       = '0.6.1'
  gem.authors       = ["Alexey Volkov"]
  gem.email         = ["diproart@gmail.com"]
  gem.description   = %q{A modern CSS framework based on Flexbox and Utilities}
  gem.summary       = %q{This gem adds the bulma.io, bulma extensions, bulma themes assets to your asset pipeline so you can import them in your Rails project.}
  gem.homepage      = "https://github.com/diproart/bulma-rails"

  gem.files         = `git ls-files`.split($\)
  gem.require_paths = ["lib"]
  gem.license       = 'MIT'

  gem.add_runtime_dependency 'sass', '~> 3.2'
end
