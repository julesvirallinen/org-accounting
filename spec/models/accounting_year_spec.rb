require 'rails_helper'

RSpec.describe AccountingYear, type: :model do
  it "is saved" do
    year = AccountingYear.create year: 2017
    expect(year.year).to eq(2017)
    expect(year).to be_valid
  end

  it "is not saved with invalid year" do
    year = AccountingYear.create year: "WRONG"

    expect(year).not_to be_valid

  end
end
