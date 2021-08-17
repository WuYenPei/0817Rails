class AddDeletedAt < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :deleted_at, :datetims
    add_index :notes, :deleted_at
  end
end
