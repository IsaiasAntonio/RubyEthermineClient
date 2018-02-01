module Ethermine::Model::Miner
  class Rounds < Ethermine::Model::Model
    attr_reader :block, :amount

    def initialize(miner)
      proccess_attributes(miner) 
    end
    
    def self.all(data)
      data.map do |values|
        self.new(value)
      end
    end

  end
end
