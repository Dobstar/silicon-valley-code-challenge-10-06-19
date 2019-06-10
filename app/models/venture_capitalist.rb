class VentureCapitalist
attr_accessor :name, :total_worth
@@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end 

  def self.all
    @@all 
  end 

  def self.tres_commas_club(total_worth)
    self.all.select {|vc| vc.total_worth == self}
  end 
end 