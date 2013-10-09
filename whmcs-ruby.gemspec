$:.unshift 'lib'

require 'whmcs/version'

Gem::Specification.new do |s|
  s.name             = 'whmcs-ruby'
  s.version          = WHMCS::Version
  s.date             = Time.now.strftime('%Y-%m-%d')
  s.summary          = 'whmcs-ruby: Ruby bindings for the WHMCS API'
  s.homepage         = 'https://github.com/dotblock/whmcs-ruby'
  s.authors          = ['Joshua Priddle']
  s.email            = 'jpriddle@nevercraft.net'

  s.files            = %w[ Rakefile README.markdown ]

  s.files           += Dir['lib/**/*']
  s.files           += Dir['test/**/*']

  s.add_dependency('crack', '= 0.1.8')
  s.add_dependency('htmlentities', '= 4.3.1')

  s.add_development_dependency('shoulda')

  s.extra_rdoc_files = ['README.markdown']
  s.rdoc_options     = ["--charset=UTF-8"]

  s.description = <<-DESC
    whmcs-ruby: Ruby bindings for the WHMCS API
  DESC
end
