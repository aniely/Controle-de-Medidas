class CreateAvisos < ActiveRecord::Migration
  def change
    create_table :avisos do |t|
      t.string :data
      t.string :descricao
      t.references :pessoa

      t.timestamps
    end
    add_index :avisos, :pessoa_id
  end
end
