class AddFieldsToStudent < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :registration_number, :integer
  end
end
