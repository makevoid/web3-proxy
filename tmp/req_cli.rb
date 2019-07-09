require_relative '../env'

ENV["HOST"] = "localhost"
ENV["PORT"] = "3001"
resp = Req.post Msg.m("net_version")
p JSON.parse resp
