class CreateProfils < ActiveRecord::Migration
  def change
    create_table :profils do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :city_of_origin
      t.string :current_location
      t.string :asylum_status
      t.string :email
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :instagram
      t.datetime :dob
      t.string :gender

      t.timestamps null: false
    end
  end
end
