class Expense < ActiveRecord::Base
  belongs_to :meeting
  belongs_to :user
  belongs_to :category
  belongs_to :accounting_year

  validates :description, presence: true
  validates :receipt_url, presence: true
  validates :euros, presence: true, numericality: {greater_than: 0}

  scope :accepted, -> { where accepted:true}



  def value

  end

end
