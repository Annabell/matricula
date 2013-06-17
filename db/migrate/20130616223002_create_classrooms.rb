class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.references :discipline
      t.integer :vacancies

      t.timestamps
    end
    add_index :classrooms, :discipline_id
  end
end
