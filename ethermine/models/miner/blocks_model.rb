module Ethermine::Model::Miner
  class Blocks < Ethermine::Model::Model
    attr_reader :paid_on, :number, :type, :amount, :tx_hash
    def initialize(miner)
      proccess_attributes(miner)  
    end

     self.all(data)
      data.map do |values|
        self.new(value)
      end
    end
  end
end
