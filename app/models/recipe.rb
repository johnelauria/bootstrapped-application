class Recipe < ActiveRecord::Base
  attr_accessible :date, :instruction, :name, :category_id

  belongs_to :category
end
