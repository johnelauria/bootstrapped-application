class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instruction
      t.date :date

      t.timestamps
    end
  end
end
