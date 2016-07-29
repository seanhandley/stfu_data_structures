require 'rake/testtask'

namespace :test do
  Rake::TestTask.new("unit") do |t|
    t.libs << 'test'
    t.libs << 'lib'
    t.pattern = "#{File.dirname(__FILE__)}/test/unit/*_test.rb"
  end
end

desc "Run tests"
task :test => ["test:unit"]

task :default => :test