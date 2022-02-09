class CreateContactRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
