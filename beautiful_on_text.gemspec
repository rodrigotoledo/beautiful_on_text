require_relative 'lib/beautiful_on_text'
Gem::Specification.new do |spec|
  spec.name          = 'beautiful_on_text'
  spec.version       = BeautifulOnText::VERSION
  spec.authors       = ['Rodrigo Toledo']
  spec.email         = ['rodrigo@rtoledo.inf.br']
  spec.summary       = 'A gem for beautifying text before saving it to a database'
  spec.description   = 'The BeautifulOnText gem provides a simple way to improve the readability and clarity of text before it is saved to a database. With its powerful language processing capabilities, the gem can correct spelling and grammar errors, simplify complex sentences, and suggest more appropriate words to use.'
  spec.homepage      = 'https://github.com/rodrigotoledo/beautiful_on_text'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'actionview', '>= 7.0.0'
  spec.add_dependency 'activerecord', '>= 7.0.0'
  spec.add_dependency 'irb'
  spec.add_dependency 'ruby-openai', '>= 0.3.0'

  spec.metadata = {
    'homepage_uri' => spec.homepage.to_s,
    'source_code_uri' => 'https://github.com/rodrigotoledo/beautiful_on_text',
    'bug_tracker_uri' => 'https://github.com/rodrigotoledo/beautiful_on_text/issues',
    'rubygems_mfa_required' => 'true'
  }
end
