class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { 
    :medium => "300x300>", 
    :thumb => "100x100>" }

  #validates :nome_completo, :cidade, :estado, :email_usuario, :descricao, :foto, :presence => true
  #attr_accessible :email, :password, :password_confirmation, :foto, :nome_completo, :cidade, :estado,:email_usuario, :descricao
end
