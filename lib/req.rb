require_relative 'msg'

class RpcErrResp
  attr_reader :err

  def initialize(error)
    @err = error
  end
end

class EmptyRespError < StandardError
  def message
    "JSON body was empty"
  end
end

class Req
  def initialize(msg)
    @message = msg
  end

  def post
    host = ENV["HOST"] || "dai.mkv.run"
    port = ENV["PORT"] || 8545
    url = "http://#{host}:#{port}"
    uri = URI url
    http = Net::HTTP.new(uri.host, uri.port)

    req = Net::HTTP::Post.new(uri.request_uri)
    req["Content-Type"] = "application/json"
    req.body = @message

    resp = http.request req
    raise EmptyRespError if resp.body == ""
    json = JSON.parse resp.body
    if error = json["error"]
      puts "ERROR"
      puts error.fetch "message"
      RpcErrResp.new error
    else
      result = json.fetch "result"
      puts "R: #{result}"
      json.to_json
    end
  end

  def self.post(message)
    new(message).post
  end
end
