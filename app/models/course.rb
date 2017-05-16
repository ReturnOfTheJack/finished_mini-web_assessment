class Course < ApplicationRecord
	has_many :contents
	validates :name, :price, :info, presence: true
end
