class CreateOrcamentos < ActiveRecord::Migration
  def change
    create_table :orcamentos do |t|
      t.string :local
      t.text :descricao
      t.decimal :distancia
      t.string :cli_nome
      t.text :cli_morada
      t.decimal :cli_contacto

      t.timestamps
    end
  end
end
