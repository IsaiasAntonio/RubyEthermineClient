module Ethermine::Model::Pool
  class MinedBlocksStats < Ethermine::Model::Model
    attr_reader :time, :nbr_blocks, :difficulty
    def initialize
      pool_api = Ethermine::Api::PoolApi.new
      process_attributes(pool_api.minedblockstats)
    end
  end
end
