# frozen_string_literal: true

require 'printspeak_rails_upgrade/version'

module PrintspeakRailsUpgrade
  # raise PrintspeakRailsUpgrade::Error, 'Sample message'
  Error = Class.new(StandardError)

  # Your code goes here...
end

if ENV.fetch('KLUE_DEBUG', 'false').downcase == 'true'
  namespace = 'PrintspeakRailsUpgrade::Version'
  file_path = $LOADED_FEATURES.find { |f| f.include?('printspeak_rails_upgrade/version') }
  version   = PrintspeakRailsUpgrade::VERSION.ljust(9)
  puts "#{namespace.ljust(35)} : #{version.ljust(9)} : #{file_path}"
end
