# frozen_string_literal: true

require 'logger'
require 'stlogger/version'

module Stlogger
  def logger
    Stlogger.logger
  end

  def self.logger
    logdev = defined?(Config::Log.logdev) ? Config::Log.logdev : STDOUT

    @logger ||= Logger.new(logdev)
  end
end
