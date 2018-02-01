module Ethermine::Model::Miner
  class Payouts < Ethermine::Model::Model
    attr_reader :paid_on, :start, :_end, :amount, :tx_hash

    def initialize(miner)
      proccess_attibutes(miner) 
    end
    
    def self.all(data)
      data.map do |values|
        self.new(value)
      end
    end

  end
end
