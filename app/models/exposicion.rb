class Exposicion < ApplicationRecord
	has_many_attached :imagenes_expo

	def thumbnail input
		return self.imagenes_expo[input].variant(resize: '1000x1000').processed
	end
end
