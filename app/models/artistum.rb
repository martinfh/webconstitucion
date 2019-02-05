class Artistum < ApplicationRecord
has_many_attached :imagen
has_one_attached :catalogo

def thumbnail input
	return self.imagen[input].variant(resize: '980x980').processed
end

def original input
	return self.imagen[input].variant(resize: '900x900').processed
end
end
