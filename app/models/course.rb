class Course < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :events, dependent: :destroy

	validates_presence_of :name, :city_name

	validates :name,
				length: { maximum: 30 }
	validates :city_name,
				length: { maximum: 30 }

	after_initialize :init
				
	private

	def init
		self.image ||= self.category.image if self.category.image
	end
end
