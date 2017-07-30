class Archivo < ApplicationRecord
	validates :title, presence: true,
                    length: { minimum: 1 }
    validates :filetype, presence: true,
                    length: { minimum: 1 }
    validates :datefile, presence: true,
                    length: { minimum: 4 }
end