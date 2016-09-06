class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :location
      t.datetime :date
      t.text :text
      t.binary :photos
      t.boolean :privacy
      t.boolean :bus
      t.boolean :car
      t.boolean :boat
      t.boolean :plane
      t.boolean :walking
      t.boolean :train

      t.timestamps null: false
    end
  end
end
