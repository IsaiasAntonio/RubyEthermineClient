module Ethermine::Api
  class WorkerApi < BaseApi
    def initialize(miner, worker)
      @miner = miner
      @worker = worker
    end

    def all_statistics
      hashes = request("miner/#{@miner}/workers")
      hashes.map do |hash|
        Ethermine::Model::Worker::Statistic.new(hash) 
      end
    end

    def statistics
      hash = request("miner/#{@miner}/worker/#{@worker}/currentStats")
      hash['worker'] = @worker
      Ethermine::Model::Worker::Statistic.new(hash)
    end

    def historical_statistics
      request("miner/#{@miner}/worker/#{@worker}/history")
    end

    def monitor
      request("miner/#{@miner}/workers/monitor")
    end
  end
end
