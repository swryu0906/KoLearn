class Event < ActiveRecord::Base
  belongs_to :course
  has_many :joins
  has_many :users, through: :joins

end
