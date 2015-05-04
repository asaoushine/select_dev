class Keyword < ActiveRecord::Base
  has_many :person_keywords
  has_many :people, through: :person_keywords
end
