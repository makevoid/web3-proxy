require_relative 'env'

class Web3Proxy < Roda
  plugin :all_verbs

  CORS = -> {
    response['Access-Control-Allow-Origin']  = CONF[:host]
    response['Access-Control-Allow-Headers'] = 'Content-Type'
  }

  route do |r|
    r.get do
      "OK"
    end

    r.options do
      CORS.()
      ""
    end

    r.post do
      CORS.()
      body = r.body.read
      # puts "Proxying request:"
      # puts body
      Req.post body
    end
  end
end
