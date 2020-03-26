class Dog
  @@all = []

  def initialize(name_argument)
    @name = name_argument
    save
  end

  def name
    @name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  # def self.clear_all
  #   # @@all = [] #<----redefine the variable
  #   # @@all.clear #<----use Ruby's built-in method #CLEAR to clear array
  #    self.all.clear # <----e l e g a n t , DOGclass > ALLmethod > built in #CLEARmethod
  # end

  def clear_all
    self.class.all.clear
  end

  def self.print_all
    array = self.all #create new variable, assign to, class object > #all method > @@all
    array.each do |iteration|
      puts iteration.name
    end
  end

end #DOGclassEND
