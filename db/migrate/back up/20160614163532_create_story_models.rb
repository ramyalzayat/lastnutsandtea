class CreateStoryModels < ActiveRecord::Migration
  def change
    create_table :story_models do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
