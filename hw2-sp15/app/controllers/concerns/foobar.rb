class Foobar
  def self.baz(arg)
    arg.map{|x| x.to_i + 2}.uniq.reject{|x| x > 10 or x % 2 == 1}.sum
  end
end
