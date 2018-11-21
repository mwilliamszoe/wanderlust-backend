class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :location
      t.string :image
      t.string :description
      t.integer :country_id
      t.integer :user_id

      t.timestamps
    end
  end
end
