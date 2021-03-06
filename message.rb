require_relative 'truncate'
require 'securerandom'

class Message
  extend Truncate

  attr_accessor  :id, :body
  
  def initialize(body)
    @id = SecureRandom.uuid
    self.body = truncate body, length: 20
  end
end
