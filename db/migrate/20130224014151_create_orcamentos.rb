class CreateOrcamentos < ActiveRecord::Migration
  def change
    create_table :orcamentos do |t|
      t.string :local, :null => false
      t.text :descricao
      t.decimal :distancia, :null => false
      t.string :cli_nome, :null => false
      t.text :cli_morada
      t.decimal :cli_contacto, :limit => 10, :null => false

      t.timestamps
    end
  end
end
