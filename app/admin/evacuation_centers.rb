ActiveAdmin.register EvacuationCenter do
  menu :label => "ศูนย์พักพิง"
  menu :primarily => 1
#  controller do
#    def new
#      @json = "[{\"lng\":\"100.59689724853513\",\"lat\":\"13.663619038125818\"}]"
#      new!
#    end
#  end
#  controller do
#    def new
#      new! do |format|
#         format.html {render :partial => "admin/evacuation_centers/new"}
#      end

#    end
#  end
  index do
    column "ชื่อศูนย์พักพิง", :title
    column "ที่ตั้ง", :address
    column :latitude
    column :longitude
    column "จำนวนสูงสุดที่รับ", :maximun
    default_actions
  end
  #sidebar  "ตำแหน่งในแผนที่" ,:partial => "map"
end
