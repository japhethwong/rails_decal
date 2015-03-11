class Dog < ActiveRecord::Base
  validates :name, presence: true
  validates :age, :numericality => {:greater_than => 0}
end
