class Meeting < ActiveRecord::Base
  has_many :expenses
  has_many :users
  def to_s
    "#{self.meeting} #{self.date}"
  end
end
