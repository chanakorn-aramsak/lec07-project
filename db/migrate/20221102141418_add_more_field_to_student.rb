class AddMoreFieldToStudent < ActiveRecord::Migration[7.0]
  def change
        change_column :students , :name, :integer
  end
end
