require 'rails_helper'

RSpec.describe "accounting_years/edit", type: :view do
  before(:each) do
    @accounting_year = assign(:accounting_year, AccountingYear.create!(
      :year => 1
    ))
  end

  it "renders the edit accounting_year form" do
    render

    assert_select "form[action=?][method=?]", accounting_year_path(@accounting_year), "post" do

      assert_select "input#accounting_year_year[name=?]", "accounting_year[year]"
    end
  end
end
