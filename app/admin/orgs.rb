ActiveAdmin.register Org do
    menu :label => "องค์กร"

   index do
     column :title
     default_actions
   end
end
