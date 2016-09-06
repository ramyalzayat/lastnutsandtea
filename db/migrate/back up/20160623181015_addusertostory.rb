class Addusertostory < ActiveRecord::Migration
  def change
  	add_column(:story_models, :name , :string)
  	add_column(:story_models, :email , :string )
  end
end
