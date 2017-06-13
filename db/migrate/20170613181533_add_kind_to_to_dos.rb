class AddKindToToDos < ActiveRecord::Migration[5.1]
  def change
    add_column :to_dos, :kind, :string
  end
end
