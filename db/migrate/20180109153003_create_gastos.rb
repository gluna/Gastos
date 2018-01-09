class CreateGastos < ActiveRecord::Migration[5.1]
  def change
    create_table :gastos do |t|
      t.date :dtgasto
      t.belongs_to :tipo_gasto, foreign_key: true
      t.numeric :valor

      t.timestamps
    end
  end
end
