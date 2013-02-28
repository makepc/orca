class AddCliMailToOrcamentos < ActiveRecord::Migration
  def change
    add_column :orcamentos, :cli_mail, :string
  end
end
