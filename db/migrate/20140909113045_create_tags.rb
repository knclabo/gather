class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.timestamps

      t.references :category, index: true, null: false
      t.string  :name
      t.integer :media_count, limit: 8
    end
  end
end
