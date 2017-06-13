class RemoveTypeFromToDos < ActiveRecord::Migration[5.1]
  def change
    remove_column :to_dos, :type, :string
  end
end
