class RemovePublicFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :public, :boolean
  end
end
