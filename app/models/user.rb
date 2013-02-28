class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
  				  :nome, :sobrenome, :funcao, :telefone, :telemovel, :fax,
  				  :nome_completo
  # attr_accessible :title, :body
  has_many :orcamentos

  def nome_completo
  	nome + " " + sobrenome
  end
end