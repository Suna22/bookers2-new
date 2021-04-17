class RemoveOptionFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :option, :text
  end
end
