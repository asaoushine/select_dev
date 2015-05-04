class PersonKeyword < ActiveRecord::Base
  belongs_to :person
  belongs_to :keyword

  def selectable_keywords
  	Keyword.all
  end
end
