Trestle.resource(:projects) do
  menu do
    item :projects, icon: 'fa fa-star'
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :name
    column :description
    column :image_url
    column :demo_url
    column :created_at, align: :center
    column :updated_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do
    # Organize fields into tabs and sidebars
    tab :Project do
      text_field :name, label: 'Project name'
      editor :description, label: 'Description of the project'
      text_field :image_url, label: 'Link of image'
      text_field :demo_url, label: 'Link of demo'
      number_field :user_id, value: current_user.id
      # row do
      #   col { datetime_field :updated_at }
      #   col { datetime_field :created_at }
      # end
    end

    # Nouvelle onglet
    # tab :programmation do
    #   editor :programmation
    # end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:project).permit(:name, ...)
  # end
end
