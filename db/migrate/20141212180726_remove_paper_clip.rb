class RemovePaperClip < ActiveRecord::Migration
  def change
  	remove_attachment :users, :foto
  end
end
