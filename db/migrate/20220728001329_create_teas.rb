class CreateTeas < ActiveRecord::Migration[5.2]
  def change
    create_table :teas do |t|
      t.string :title
      t.text :description
      t.integer :temprature
      t.integer :brew_time

      t.timestamps
    end
  end
end
