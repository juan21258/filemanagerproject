class CreateArchivos < ActiveRecord::Migration[5.1]
  def change
    create_table :archivos do |t|
      t.string :title
      t.string :filetype
      t.string :datefile

      t.timestamps
    end
  end
end
