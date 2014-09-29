require 'tilt/template'

module Fay
  class TiltTemplate < ::Tilt::Template
    def prepare
    end

    def evaluate(scope, locals, &block)
      Fay::Compiler.compile data
    end
  end
end