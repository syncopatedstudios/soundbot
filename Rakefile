require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rom/sql/rake_task"
require "soundbot"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :db do
  task :setup do
    config = ROM::Configuration.new(:sql, "sqlite://#{DB}")
    ROM::SQL::RakeSupport.env = config
  end
end
