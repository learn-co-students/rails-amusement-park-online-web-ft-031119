class CreateAttractions < ActiveRecord::Migration[4.2]

  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :happiness_rating
      t.integer :nausea_rating
      t.integer :tickets
      t.integer :min_height
    end
  end

end
