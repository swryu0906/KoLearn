class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :description
      t.string :image, default: "http://www.riskid.nl/assets/testimonials/user-3995d1ed5f9b6ea6ef9c7bc9ead47415.jpg"
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
