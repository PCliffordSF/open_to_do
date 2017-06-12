class RemovePermissionsFromList < ActiveRecord::Migration
  def change
    remove_column :lists, :permissions, :string
  end
end
