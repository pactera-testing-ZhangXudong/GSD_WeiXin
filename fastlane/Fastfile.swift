// This class is automatically included in FastlaneRunner during build
// If you have a custom Fastfile.swift, this file will be replaced by it
// Don't modify this file unless you are familiar with how fastlane's swift code generation works
// *** This file will be overwritten or replaced during build time ***

import Foundation

open class Fastfile: LaneFile {
    override public init() {
        super.init()
    }
}

before_all do |lane, options|
  # ...
end

before_each do |lane, options|
  # ...
end

lane :deploy do |options|
  # ...
  if options[:submit]
    # Only when submit is true
  end
  # ...
  increment_build_number(build_number: options[:build_number])
  # ...
end

after_all do |lane, options|
  # ...
end

after_each do |lane, options|
  # ...
end

error do |lane, exception, options|
  if options[:debug]
    puts "Hi :)"
  end
end
// Please don't remove the lines below
// They are used to detect outdated files
// FastlaneRunnerAPIVersion [0.9.1]
