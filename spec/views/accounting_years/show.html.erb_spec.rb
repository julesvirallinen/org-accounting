require 'rails_helper'

RSpec.describe "accounting_years/show", type: :view do
  before(:each) do
    @accounting_year = assign(:accounting_year, AccountingYear.create!(
      :year => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
