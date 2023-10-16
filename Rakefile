# frozen_string_literal: true

# source: https://stephenagrice.medium.com/making-a-command-line-ruby-gem-write-build-and-push-aec24c6c49eb

GEM_NAME = 'printspeak_rails_upgrade'

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'printspeak_rails_upgrade/version'

RSpec::Core::RakeTask.new(:spec)

require 'rake/extensiontask'

desc 'Compile all the extensions'
task build: :compile

Rake::ExtensionTask.new('printspeak_rails_upgrade') do |ext|
  ext.lib_dir = 'lib/printspeak_rails_upgrade'
end

desc 'Publish the gem to RubyGems.org'
task :publish do
  version = PrintspeakRailsUpgrade::VERSION
  system 'gem build'
  system "gem push #{GEM_NAME}-#{version}.gem"
end

desc 'Remove old *.gem files'
task :clean do
  system 'rm *.gem'
end

task default: %i[clobber compile spec]
