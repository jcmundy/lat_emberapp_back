class CreateGelatos < ActiveRecord::Migration[5.1]
  def change
    create_table :gelatos do |t|
      t.string :name

      t.timestamps
    end
  end
end
