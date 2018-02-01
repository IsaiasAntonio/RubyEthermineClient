module Ethermine::Model::Pool
  class NetworkStatistics < Ethermine::Model::Model
    attr_reader :time, :block_time, :difficulty, :hash_rate, :usd, :btc
    def initialize
      pool_api = Ethermine::Api::PoolApi.new
      process_attributes(pool_api.networkstatistics)
  end
end
