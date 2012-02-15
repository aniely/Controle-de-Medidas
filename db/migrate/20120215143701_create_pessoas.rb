class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :sexo
      t.string :cpd
      t.string :telefone
      t.string :datanascimento
      t.string :email

      t.timestamps
    end
  end
end
