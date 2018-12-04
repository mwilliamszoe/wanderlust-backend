class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :title
      t.integer :country_id
      t.integer :user_id
      t.timestamps
    end
  end
end
