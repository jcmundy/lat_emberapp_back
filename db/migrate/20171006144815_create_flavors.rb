class CreateFlavors < ActiveRecord::Migration[5.1]
  def change
    create_table :flavors do |t|
      t.string :name
      t.references :gelato, foreign_key: true
      t.references :yogurt, foreign_key: true

      t.timestamps
    end
  end
end
