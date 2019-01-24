class Artistum < ApplicationRecord
has_many_attached :imagen

def thumbnail input
	return self.imagen[input].variant(resize: '900x900').processed
end

def original input
	return self.imagen[input].variant(resize: '900x900').processed
end
end
