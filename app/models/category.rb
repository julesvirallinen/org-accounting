class Category < ActiveRecord::Base
  has_many :expenses

  def to_s
    "#{self.name} #{self.number}"
  end
end
