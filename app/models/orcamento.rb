class Orcamento < ActiveRecord::Base
  attr_accessible :cli_contacto, :cli_morada, :cli_nome, :descricao, :distancia, :local, :user_id, :adiciona_id
  validates_presence_of :cli_contacto, :cli_morada, :cli_nome, :descricao, :distancia, :local
  belongs_to :user

  def adiciona_id(id)
  	user_id = 1
  end
end
