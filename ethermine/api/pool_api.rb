module Ethermine::Api
  class PoolApi < BaseApi
    def poolstatistics
      array = request("poolStats")
      Ethermine::Model::Pool::Statistics.all(array)
    end
    def creditlist
      array = customrequest('credits')
      Ethermine::Model::Pool::CreditList.all(array)
    end
    def minedblockstats
      request("blocks/history")
      Ethermine::Model::Pool::MinedBlocksStats.all(array)
    end
    def networkstatistics
      request("networkStats")
      Ethermine::Model::Pool::NetworkStatistics.all(array)
    end
    def serverhashratestats
      request("servers/history")
      Ethermine::Model::Pool::ServerHashRate.all(array)
    end
  end
end
