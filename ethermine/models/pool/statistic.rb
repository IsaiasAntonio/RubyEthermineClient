module Ethermine::Model::Pool
  class Statistics < Ethermine::Model::Model
    attr_reader :number, :miner, :time, :miner, :hash_rate, :hash_rate, :miners, :workers, :usd, :btc
    
    def initialize
      pool_api = Ethermine::Api::PoolApi.new
      process_attributes(pool_api.poolstatistics)
    end
  end
end

