class AccountingYear < ActiveRecord::Base
  has_many :expenses

  def to_s
    "#{self.year}"
  end
end
