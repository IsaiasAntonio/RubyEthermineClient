module Ethermine::Model::Pool
  class ServerHashRate < Ethermine::Model::Model
    attr_reader :time, :hashrate, :server
    def initialize
      pool_api = Ethermine::Api::PoolApi.new
      process_attributes(pool_api.serverhashratestats)
  end
end
