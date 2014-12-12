class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :nome_completo, :string
  	add_column :users, :cidade, :string
  	add_column :users, :estado, :string
  	add_column :users, :email_usuario, :string
  	add_column :users, :descricao, :string
  	remove_column :users, :foto
  end
end
