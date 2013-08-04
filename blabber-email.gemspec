Gem::Specification.new do |s|
  s.name        = 'blabber-email'
  s.version     = '0.1.0'
  s.date        = '2013-08-04'
  s.summary     = "Email channel for Blabber."
  s.description = "Email channel for Blabber."
  s.authors     = ["Paul Picazo"]
  s.email       = 'ppicazo@gmail.com'
  s.files       = ["lib/blabber/email.rb"]
  s.homepage    = 'https://github.com/ppicazo/blabber-email'
  s.license     = 'New BSD License'
  s.add_dependency('blabber', ["~> 2.0"])
  s.add_dependency('mail', ["~> 2.5"])
end
