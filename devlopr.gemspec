# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "nulldoot2k"
  spec.version       = "0.4.6"
  spec.authors       = ["NullDoot2k"]
  spec.email         = ["nulldoot2k@proton.me"]

  spec.summary       = %q{ A Jekyll Theme built for OniOps }
  spec.homepage      = "https://github.com/CompanyDATV/Jekyll-OniOps"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|categories|tags|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", ">= 3.5", "< 5.0"
  spec.add_runtime_dependency "jekyll-sitemap", '~> 1.4.0'
  spec.add_runtime_dependency "jekyll-feed", '>= 0.13', '< 0.17'
  spec.add_runtime_dependency "jekyll-seo-tag", '~> 2.6.1'
  spec.add_runtime_dependency "jekyll-paginate", '~> 1.1.0'
  spec.add_runtime_dependency "jekyll-gist", '~> 1.5.0'
  spec.add_runtime_dependency "jekyll-admin", '~> 0.11.0'

  spec.add_development_dependency "bundler", "~> 2.2.29"
  spec.add_development_dependency "rake", "~> 12.0"
end