class Evacuee < ActiveRecord::Base
  belongs_to :evacuation_center
    has_attached_file :avatar,
                    :styles => { :medium => "350x350>",
                                 :thumb => "150x150>" }
    attr_accessible  :avatar
end
