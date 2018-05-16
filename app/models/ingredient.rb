class Ingredient < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  has_many :doses
  has_many :cocktails, through: :doses
  before_destroy :check
  def check
    if doses.count > 0
      return false
    end
  end

end

