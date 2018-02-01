module Ethermine::Model::Pool
  class CreditList < Ethermine::Model::Model
    attr_reader :miner, :hashrate, :credit
    def initialize
      pool_api = Ethermine::Api::PoolApi.new
      process_attributes(pool_api.creditlist)
    end
  end
end
