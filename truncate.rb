module Truncate
  def self.extended base
    base.send :include,TruncateMethods
  end
  module TruncateMethods
    def truncate(body, size)
      return "#{body[0...size[:length]]}..."
    end
  end
end
