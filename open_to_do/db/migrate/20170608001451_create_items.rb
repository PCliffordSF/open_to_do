class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :to_do

      t.timestamps null: false
    end
  end
end
