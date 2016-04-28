class New < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  belongs_to :category
end
