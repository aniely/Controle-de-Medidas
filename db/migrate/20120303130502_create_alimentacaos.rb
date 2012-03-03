class CreateAlimentacaos < ActiveRecord::Migration
  def change
    create_table :alimentacaos do |t|
      t.string :calorias
      t.string :tipo
      t.references :pessoa

      t.timestamps
    end
    add_index :alimentacaos, :pessoa_id
  end
end
