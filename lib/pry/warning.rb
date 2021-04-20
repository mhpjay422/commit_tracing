class Pry
  module Warning
    def self.warn(msg)
      loc = caller_locations.first
      path = loc.path
      lineno = loc.lineno

      Kernel.warn("#{path}:#{lineno}: warning: #{msg}")
    end
  end
end
