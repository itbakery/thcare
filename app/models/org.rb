class Org < ActiveRecord::Base
  belongs_to :orgtype
  has_many :evacuation_centers
end
