Trestle.resource(:posts) do
  menu do
    item :posts, icon: 'fa fa-pen'
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :title
    column :description
    column :image_url
    column :source_url
    column :created_at, align: :center
    column :updated_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do
    # Organize fields into tabs and sidebars
    tab :Post do
      text_field :title, label: 'Title of post'
      editor :description, label: 'Description of post'
      text_field :image_url, label: 'Link of image'
      text_field :source_url, label: 'Link of source'
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
  #   params.require(:post).permit(:name, ...)
  # end
end
