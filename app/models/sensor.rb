class Sensor < ApplicationRecord
	has_many :values, dependent: :destroy
	has_one_attached :image
end
