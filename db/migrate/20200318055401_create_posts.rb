class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :price
      t.date :deadline_date
      t.date :registration_date
      t.date :application_deadline_date
      t.text :text
      t.string :mention
      t.timestamps
    end
  end
end
