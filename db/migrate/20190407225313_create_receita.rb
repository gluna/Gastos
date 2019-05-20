class CreateReceita < ActiveRecord::Migration[5.1]
  def change
    create_table :receita do |t|
      t.date :dtreceita
      t.belongs_to :tipo_receita, foreign_key: true
      t.numeric :valor

      t.timestamps
    end
  end
end
