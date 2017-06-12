class RemovePublicFromList < ActiveRecord::Migration
  def change
    remove_column :lists, :public, :boolean
    remove_column :lists, :permissions, :string
  end
end
