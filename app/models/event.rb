class Event < ActiveRecord::Base
	belongs_to :course
	has_many :joins, dependent: :destroy
	has_many :users, through: :joins

	validates_presence_of :start_time, :end_time

	after_initialize :init

	private

	def init
		self.counter ||= 0
	end
end
