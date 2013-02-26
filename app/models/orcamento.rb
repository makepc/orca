class Orcamento < ActiveRecord::Base
  attr_accessible :cli_contacto, :cli_morada, :cli_nome, :descricao, :distancia, :local
  validates_presence_of :cli_contacto, :cli_morada, :cli_nome, :descricao, :distancia, :local
end
