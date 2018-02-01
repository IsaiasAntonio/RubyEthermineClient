module Ethermine::Api
  class PoolApi < BaseApi
    def poolstatistics
      request("poolStats")
    end
    def creditlist
      customrequest('credits')
    end
    def minedblockstats
      request("blocks/history")
    end
    def networkstatistics
      request("networkStats")
    end
    def serverhashratestats
      request("servers/history")
    end
  end
end
