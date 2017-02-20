class Meeting < ActiveRecord::Base
  has_many :expenses

  def to_s
    "#{self.meeting} #{self.date}"
  end
end
