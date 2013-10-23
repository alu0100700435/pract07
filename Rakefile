require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
#para no tener que poner -Ilib
$:.unshift File.dirname(__FILE__) + 'lib'

task :default => :test


desc "Ejecutar tests"
task :test do
        sh "rspec spec/spec_fraction.rb --format documentation"

end
