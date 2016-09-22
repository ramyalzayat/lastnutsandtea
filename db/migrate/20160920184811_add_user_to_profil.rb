class AddUserToProfil < ActiveRecord::Migration
  def change
  	add_column :profils , :user_id , :integer
  end
end
