class CreateAtividades < ActiveRecord::Migration
  def change
    create_table :atividades do |t|
      t.string :nomeat
      t.string :tipo
      t.string :calorias
      t.string :horas
      t.references :pessoa

      t.timestamps
    end
    add_index :atividades, :pessoa_id
  end
end
