class CreateMedidas < ActiveRecord::Migration
  def change
    create_table :medidas do |t|
      t.string :peso
      t.string :altura
      t.string :medida
      t.references :pessoa

      t.timestamps
    end
    add_index :medidas, :pessoa_id
  end
end
