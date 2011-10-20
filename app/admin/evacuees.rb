ActiveAdmin.register Evacuee do
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Evacucee Details"  do
    f.input :evacuation_center
    f.input :code
    f.input :national_id
    f.input :avatar, :as=>:file
    f.input :name
    f.input :surname
    f.input :sex
    f.input :age
    f.input :address
    f.input :district
    f.input :province
    f.input :contactperson
    f.input :health
    f.input :hospital
    f.input :pet
  end
  f.buttons
  end
end
