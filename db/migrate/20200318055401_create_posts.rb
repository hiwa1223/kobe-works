class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :price
      t.date :production_deadline
      t.date :application_deadline
      t.text :content
      t.string :mention
      t.timestamps
    end
  end
end