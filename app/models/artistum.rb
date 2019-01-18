class Artistum < ApplicationRecord
has_many_attached :imagen

def thumbnail input
	return self.imagen[input].variant(resize: '300x300').processed
end
end
