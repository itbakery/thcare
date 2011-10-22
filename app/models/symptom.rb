class Symptom < ActiveRecord::Base
  attr_accessible  :evacuee_id, :deciease_id
  belongs_to :evacuee
  belongs_to :deciease
end
