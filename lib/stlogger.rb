# frozen_string_literal: true

require 'logger'
require 'stlogger/version'

module Stlogger
  def logger
    Stlogger.logger
  end

  def self.logger
    @logger ||= Logger.new(Stlogger.config.logdev)
  end

  def self.config
    @config ||= Config.new
  end

  def self.configure
    yield config
  end

  class Config
    attr_accessor :logdev

    def initialize
      @logdev = STDOUT
    end
  end
end
