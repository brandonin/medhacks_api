class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :medications, :type, :medication
  end
end
