class AddColumnToTransaction < ActiveRecord::Migration[5.0]
  def change
    remove_column :transactions, :staus, :integer
  end
end
