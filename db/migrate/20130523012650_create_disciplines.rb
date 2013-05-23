class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.string :cod
      t.integer :credits

      t.timestamps
    end
  end
end
