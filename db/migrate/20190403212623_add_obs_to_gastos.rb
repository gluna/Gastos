class AddObsToGastos < ActiveRecord::Migration[5.1]
  def change
    add_column :gastos, :obs, :string
  end
end
