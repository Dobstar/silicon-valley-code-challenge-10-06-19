class FundingRound

    attr_accessor :type, :investment

    @@all = []

    def initialize(type, investment)
        @type = type
        @investment = investment
        @@all << self
    end 
    def self.all
        @@all
    end
    
    def startup
        Startup
    end 

    def venture_capitalist
        VentureCapitalist
    end 
    
    
end
