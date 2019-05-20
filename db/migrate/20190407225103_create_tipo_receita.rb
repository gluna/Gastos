class CreateTipoReceita < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_receita do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
