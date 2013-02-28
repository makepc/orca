class Orcamento < ActiveRecord::Base
  attr_accessible :cli_contacto, :cli_morada, :cli_nome, :descricao, :distancia, :local, :user_id, :estado, :cli_mail

  validates_presence_of :cli_contacto, :cli_morada, :cli_nome, :descricao, :distancia, :local
  belongs_to :user

end
