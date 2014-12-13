class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :visitas, :dependent => :destroy
  
  has_attached_file :avatar, :styles => { 
    :medium => "300x300>", 
    :thumb => "128x128>" }
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates :nome_completo, :cidade, :estado, :email_usuario, :descricao, :avatar, :presence => true
  
end
