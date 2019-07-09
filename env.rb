require 'net/http'
require 'json'
require 'bundler'
Bundler.require :default

# DEFAULT_HOST = "localhost"
DEFAULT_HOST = "dai.mkv.run"

require_relative 'config/conf'
require_relative 'lib/req'
require_relative 'lib/msg'
require_relative 'lib/resp'
