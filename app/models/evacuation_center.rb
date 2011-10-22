class EvacuationCenter < ActiveRecord::Base
  acts_as_gmappable
  belongs_to :org
  has_many :evacuation_center
  def gmaps4rails_address
    address
  end
  def gmaps4rails_infowindow
    "<h4>#{title}</h4>" << "<h4>#{address}</h4>"
  end
end
