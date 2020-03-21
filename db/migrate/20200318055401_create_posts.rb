class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :lower_limit_price
      t.integer :upper_limit_price
      t.text :content
      t.text :company_information
      t.text :about_product
      t.text :recruitment_background
      t.string :job_occupation
      t.text :skill
      t.string :expected_experience
      t.text :attraction_of_company
      t.text :attraction_of_job
      t.text :attraction_of_environment
      t.date :production_deadline
      t.date :application_deadline
      t.string :mention
      t.timestamps
    end
  end
end