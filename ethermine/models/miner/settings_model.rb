module Ethermine::Model::Miner
  class Settings < Ethermine::Model::Model
    attr_reader :email, :monitor, :min_payout, :ip

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
