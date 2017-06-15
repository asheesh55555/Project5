class Company < ApplicationRecord
	has_many :places
	belongs_to :country
	belongs_to :state
	belongs_to :city
end
