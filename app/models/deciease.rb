class Deciease < ActiveRecord::Base
  attr_accessible :name
  has_many :symtoms
  has_many :evacuees, :through => :symtoms
end
