class Manegement < ApplicationRecord
	extend ActiveHash::Associations::ActiveRecordExtensions
	belongs_to :sleep

	validates :temperature, :b_pressure_up, :b_pressure_down, :pulse, :weight, :exercise_content, presence: true

	validates :sleep_id, numericality: { other_than: 1 , message: "can't be blank"}
end
