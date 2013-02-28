class AddEstadoToOrcamentos < ActiveRecord::Migration
  def change
    add_column :orcamentos, :estado, :integer
  end
end
