class AddIndexToUsuariosEmail < ActiveRecord::Migration[5.1]
  def change
  	add_index :usuarios, :email, unique: true
  	#Se relaciona usuarios que es el controlador que creamos
  end
end
