module Fay
  class Compiler
    def self.compile(source)
      Open3.popen3("fay") do |i,o,e,t|
        i.puts source
        o.read
      end
    end
  end
end