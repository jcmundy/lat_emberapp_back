class CreateYogurts < ActiveRecord::Migration[5.1]
  def change
    create_table :yogurts do |t|
      t.string :name

      t.timestamps
    end
  end
end
