require 'rails_helper'

RSpec.describe "accounting_years/new", type: :view do
  before(:each) do
    assign(:accounting_year, AccountingYear.new(
      :year => 1
    ))
  end

  it "renders new accounting_year form" do
    render

    assert_select "form[action=?][method=?]", accounting_years_path, "post" do

      assert_select "input#accounting_year_year[name=?]", "accounting_year[year]"
    end
  end
end
