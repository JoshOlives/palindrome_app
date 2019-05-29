#dont think about this too much jus tknow that its needed to run tests
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'test/*_test.rb'
  t.warning = false
end

task :default => [:test]