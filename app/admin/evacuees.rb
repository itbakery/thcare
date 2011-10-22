ActiveAdmin.register Evacuee do
    menu :label => "ข้อมูลผู้พักพิง"
    menu :primarily => 2
    #index :as => :grid , :columns =>5 do |evacuee|
     # link_to(image_tag(evacuee.avatar(:thumb), :title=>"#{evacuee.name} #{evacuee.surname}",:alt=>"#{evacuee.name} #{evacuee.surname}"),admin_evacuee_path(evacuee))
    #end
    index do
      column :code
      column :idcard
      column :name
      column :surname
      column :gender
      column :age
    end
    form :html => { :enctype => "multipart/form-data" } do |f|
     f.inputs "ข้อมูลสำหรับผู้เข้าพักพิง ที่ ศูนย์"  do
        f.input :evacuation_center ,:label => "ศูนย์พักพิง"
        f.input :code , :label => "รหัสเข้าพัก"
        f.input :idcard, :label => "บัตรประชาชน"
        f.input :avatar , :as => :file
        f.input :name , :label => "ชื่อ"
        f.input :surname, :label => "นามสกุล"
        f.input :gender,:as => :radio , :label=>"เพศ", :collection => [["Male","male"],["Female","female"]]
        f.input :age , :label => "อายุ"
        f.input :decieases ,:label=> "โรคประจำตัว"
        f.input :address , :label => "ที่อยู่"
        f.input :district, :label => "เขต/แขวง"
        f.input :province, :label => "จังหวัด"
        f.input :phone , :label => "โทรศัพท์"
        f.input :contact, :label => "ชื่อผู้ที่ติดต่อ(ฉุกเฉิน)"
        f.input :hospital , :label => "โรงพยาบาลประจำตัว"
        f.input :pet ,:label => "สัตว์เลี้ยง"
        f.input :zone , :label => "โซนที่พัก"

     end
     f.buttons
   end
end
