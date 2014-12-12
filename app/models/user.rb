class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #after_save :save_photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates :nome_completo, :cidade, :estado, :email_usuario, :descricao, :foto, :presence => true
  #attr_accessible :email, :password, :password_confirmation, :foto, :nome_completo, :cidade, :estado,:email_usuario, :descricao

end
