class Exposicion < ApplicationRecord
	has_many_attached :imagenes_expo
	has_one_attached :gacetilla

	def thumbnail input
		return self.imagenes_expo[input].variant(resize: '1200x1200').processed
	end
end
