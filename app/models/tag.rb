class Tag < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :layer, presence: true

  scope :top_keyword, lambda { where( layer: 1 ) }

  scope :second_keyword, lambda { |name| where( parent_name: "#{name}")}

  scope :third_keyword, lambda { |name| where( grandparent_name: "#{name}") }


end
