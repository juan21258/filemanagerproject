class Archivo < ApplicationRecord
	validates :title, presence: true,
                    length: { minimum: 1 }
    validates :filetype, presence: true,
                    length: { minimum: 1 }
    validates :datefile, presence: true,
                    length: { minimum: 4 }
    def self.search(search)
        #titulo = "title".downcase
        #tipo = "filetype".downcase
        #busqueda = search.downcase
        where('title LIKE ? OR filetype LIKE ? OR datefile LIKE ?',
         "%#{search}%", "%#{search}%", "%#{search}%"); #multiples condiciones
        #where("title LIKE ?", "%#{search}%") una via
	end
end
