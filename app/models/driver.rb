class Driver < ActiveRecord::Base
  has_many :histories
  has_many :users, through: :histories
end
