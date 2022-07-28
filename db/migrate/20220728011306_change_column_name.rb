class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :teas, :temprature, :temperature
  end
end
