class Dog

  attr_accessor :name     # writer and reader for @name
  @@all = []              
  
  def initialize(name)   
    @name = name
    save                  # calls save instance method
  end
  
  def self.all            # reader for all array
    @@all
  end
  
  def self.clear_all
    @@all.clear
  end
 
  def self.print_all # alt way: create @@names, << name into names, clear @@names w/ clear_all, puts @@names
    i = 0         
    while i < Dog.all.length  # loop through each instance of the object
      puts Dog.all[i].name    # select name from object and print it
      i += 1
    end
  end

  def save          
    @@all << self             # save object to @@all array
  end
end
