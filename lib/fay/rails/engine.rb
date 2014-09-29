require 'rails/engine'

module Fay
  module Rails
    class Engine < ::Rails::Engine
      config.app_generators.javascript_engine :hs
      initializer :register_fay do |app|
        app.assets.register_engine '.hs', TiltTemplate
      end
    end
  end
end