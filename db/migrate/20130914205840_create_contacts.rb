class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.belongs_to :user, index: true
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
