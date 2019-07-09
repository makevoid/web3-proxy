class Resp
  def self.r(resp)
    { "result": resp }.to_json
  end
end
