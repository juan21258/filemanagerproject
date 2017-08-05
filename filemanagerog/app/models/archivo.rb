class Archivo < ApplicationRecord
	
	validates :title, presence: true,
                    length: { minimum: 1 }
    validates :filetype, presence: true,
                    length: { minimum: 1 }
    validates :datefile, presence: true,
                    length: { minimum: 4 }
    def self.search(search)
  		where("title LIKE ?", "%#{search}%")
	end
end
