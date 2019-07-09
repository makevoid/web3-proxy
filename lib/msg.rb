class MessageIds
  def initialize
    @id = 0
  end

  def id
    @id += 1
  end
end

MESSAGE_IDS = MessageIds.new

class Msg
  def initialize(rpc_method, params=[])
    @message = rpc_method
    @params  = params
  end

  def message
    { "jsonrpc":"2.0", "method": @message, "params": @params, "id": next_id }.to_json
  end

  def next_id
    MESSAGE_IDS.id
  end

  def self.m(message, params=[])
    new(message, params).message
  end
end
