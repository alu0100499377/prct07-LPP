require 'rake'

$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutar la práctica"
task :bin do
	sh "ruby /lib/prct07.rb"
end

desc "Ejecutar los test usando RSpec"
task :test do
	sh "rspec spec/prct07_spec.rb"
end
