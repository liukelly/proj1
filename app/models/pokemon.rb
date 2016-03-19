class Pokemon < ActiveRecord::Base
  validates :name, presence: true, uniqueness:true
  has_one :trainer
end
