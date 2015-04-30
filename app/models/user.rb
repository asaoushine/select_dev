class User < ActiveRecord::Base
  has_many :histories
  has_many :drivers, through: :histories

  accepts_nested_attributes_for :histories, allow_destroy: true, reject_if: :all_blank
end
