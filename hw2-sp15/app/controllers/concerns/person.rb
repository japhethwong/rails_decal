class Person
  def initialize(name, age)
    @name = name
    @age = age
    @nickname = name[0, 4]
  end

  attr_accessor :nickname

  def birth_year
    curr_year = Time.now.year
    curr_year - @age.to_i
  end

  def introduce
    "Hi, my name is " + @name.to_s + ", and I am " + @age.to_s + " year(s) old!"
  end
end
