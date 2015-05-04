class Person < ActiveRecord::Base
  has_many :person_keywords
  has_many :keywords, through: :person_keywords

  accepts_nested_attributes_for :person_keywords

end
