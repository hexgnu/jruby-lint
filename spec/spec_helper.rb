require 'rspec'
require 'rspec/given'
require 'jruby/lint'
require 'aruba/api'

module JRuby::Lint::Specs
  PROJECT_DIR = File.expand_path('../..', __FILE__)
  def project_dir
    PROJECT_DIR
  end
end

RSpec.configure do |config|
  config.include JRuby::Lint::Specs
  config.include Aruba::Api
end
