require 'rake'
require 'rake/testtask'
require 'rdoc/task'

require 'rubygems'
require 'rubygems/package_task'

desc 'Default: run unit tests.'
task :default => :test

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "convert_office"
    gemspec.summary = ""
    gemspec.description = ""
    gemspec.email = "stuart.owen@manchester.ac.uk"
    gemspec.homepage = "http://github.com/stuzart/convert_office"
    gemspec.authors = ["Amar Daxini","Stuart Owen"]

    gemspec.has_rdoc = true
    gemspec.files.include %w(jars)
    gemspec.files.exclude "test/*"
    gemspec.extra_rdoc_files = ["README.markdown", "MIT-LICENCE"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end


desc 'Test the convert_office plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the convert_office plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ConvertOffice'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
