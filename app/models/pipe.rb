class Pipe < ActiveRecord::Base
	has_many :images, dependent: :destroy
	validates :name, presence: true
	validates_uniqueness_of :name
	validates :sides_shot, numericality: { greater_than: 0 }
	accepts_nested_attributes_for :images, reject_if: proc { |a| a['url'].blank? }
end