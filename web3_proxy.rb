require_relative 'env'

class Resp
  def self.r(resp)
    { "result": resp }.to_json
  end
end

class Web3Proxy < Roda
  route do |r|
    r.post do
      # Msg.m("net_version")
      # p r.body.read
      # Resp.r("100")
      body = r.body.read
      puts "Proxying request:"
      puts body
      Req.post body
    end
  end
end


# - create a CORS server
# - use cordova native plugin to connect directly without needing a cors server
