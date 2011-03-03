$:.unshift 'lib'

task :default => :test

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test' << '.'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -r ./lib/whmcs.rb -I ./lib"
end

require 'sdoc_helpers'
desc "Push a new version to Gemcutter"
task :publish do
  require 'whmcs/version'

  ver = WHMCS::Version

  sh "gem build whmcs-ruby.gemspec"
  sh "gem push whmcs-ruby-#{ver}.gem"
  sh "git tag -a -m 'whmcs-ruby v#{ver}' v#{ver}"
  sh "git push origin v#{ver}"
  sh "git push origin master"
  sh "git clean -fd"
  sh "rake pages"
end
