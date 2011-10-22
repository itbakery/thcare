class Evacuee < ActiveRecord::Base
  belongs_to :evacuation_center
  has_attached_file :avatar,
                    :styles => { :medium => "350x350>",
                                 :thumb => "150x150>" }
  attr_accessible  :avatar
  attr_accessible  :evacuation_center,:code,:idcard,:name,:surname,:gender,:age,:address,:phone, :district,:province,:contact,:health,:hospital,:pet
  attr_accessible  :deciease_ids, :evacuation_center_id
  has_many :symptoms
  has_many :decieases, :through => :symptoms
end
