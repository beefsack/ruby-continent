require 'rake'

Gem::Specification.new do |s|
  s.name = 'ruby-continent'
  s.version = '0.1.0'
  s.summary = "A library for continents and their countries"
  s.description = "Get countries by continent, or find the continents for a country given ISO 3166-1 alpha-2, alpha-3 and numeric codes"
  s.email = "beefsack@gmail.com"
  s.authors = ["Michael Alexander"]
  s.files = FileList['lib/**/*.rb', 'bin/*', '[A-Z]*', 'test/**/*', 'share/**/*'].to_a
  s.homepage = 'https://github.com/beefsack/ruby-continent'
end
