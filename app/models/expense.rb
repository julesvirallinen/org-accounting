class Expense < ActiveRecord::Base
  belongs_to :meeting
  belongs_to :user

  validates :description, presence: true
  validates :receipt_url, presence: true
  validates :euros, presence: true, numericality: {greater_than: 0}


end
