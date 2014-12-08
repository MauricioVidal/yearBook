class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  PHOTO_STORE = File.join Rails.root.to_s, 'public', 'photos'

  after_save :save_photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates :nome_completo, :cidade, :estado, :email_usuario, :descricao, :foto, :presence => true
  #attr_accessible :email, :password, :password_confirmation, :foto, :nome_completo, :cidade, :estado,:email_usuario, :descricao

  def load_image data
  	# Record the filename
     self.filename = data.original_filename
     # Store the data for later use
     @photo_data = data
  end

   def save_photo

	     if @photo_data
	       # Write the data out to a file
	       name = File.join PHOTO_STORE, self.filename
	       File.open(name, 'wb') do |f|
	       f.write(@photo_data.read)
	      	end
	       	@photo_data = nil
    	end
	end
end
