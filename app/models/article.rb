class Article < ApplicationRecord
	include Filterable
	belongs_to :user 
	validates :title, presence: true , length: {minimum: 6, maximum: 100}
	validates :description, presence: true , length: {minimum: 10, maximum: 300}




	scope :filter_by_title, ->(title) { where('title like ?', "%#{title}%") }
	scope :filter_by_description, ->(description) {where('description like ?', "%#{description}%")}
end
