class CreateGolfs < ActiveRecord::Migration
  def change
    create_table :golfs do |t|
      t.string :name, :null => false
      t.text :description
      t.string :url
      t.string :country

      t.timestamps null: false
    end
  end
end
