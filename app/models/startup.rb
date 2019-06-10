class Startup
 attr_reader :founder, :domain
 attr_accessor :name, :pivot
 @@all =[]

 def initialize(name, founder, domain, pivot)
    @name = name
    @founder = founder
    @domain = domain
    @pivot = pivot
    @@all << self
 end 

 def self.all
    @@all
 end

 def self.find_by_founder(founder)
    Startup.all.find do {|f| f.founder == self }
 end 

 def sign_contract(investment)
    VentureCapitalist.investment.select {|n| n.investment == self}
 end 
end
