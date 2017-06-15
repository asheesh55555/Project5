class Place < ApplicationRecord
	belongs_to :company
	has_many :nodes
end
