class Sensor < ApplicationRecord
	has_many :values, dependent: :destroy 
end
