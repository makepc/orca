class AddUserIdToOrcamentos < ActiveRecord::Migration
  def change
  	add_column :orcamentos, :user_id, :integer
  	add_index :orcamentos, :user_id
  end
end
