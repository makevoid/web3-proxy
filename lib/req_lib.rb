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
