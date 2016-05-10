ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


  index do
    selectable_column
    id_column
    column :name
    column :uploaded_images
    column :uploaded_videos
    column :comments
    actions
  end
 


 show do 

# panel "Table of Contents" do
#       table_for user.comments do
#         column :upload_id
#         column :user_id
#         column :created_at
#       end
#     end


    attributes_table do
      row :title
      row :image do
        #image_tag upload.avatar.url
      end
    end
    


   # active_admin_comments


 end 

#   sidebar "Details", only: :show do
#     attributes_table_for user do
#       row :name
#       row :email
#       row :comments
    
#   end
# end


  sidebar "Project Details", only: [:show, :edit] do
    ul do
      li link_to "Profile",    admin_project_tickets_path(project)
      li link_to "Edit", admin_project_milestones_path(project)
    end
  end

end
