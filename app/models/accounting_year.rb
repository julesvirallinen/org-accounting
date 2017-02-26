class AccountingYear < ActiveRecord::Base
  has_many :expenses

  validates :year, numericality: {only_integer: true, greater_than: 2015, less_than: 2050}

  def to_s
    "#{self.year}"
  end
end
