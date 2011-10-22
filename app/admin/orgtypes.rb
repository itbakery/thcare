ActiveAdmin.register Orgtype do
menu :label => "ประเภทองค์กร"

  index do
    column :title
    default_actions
  end
end
