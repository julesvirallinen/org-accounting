require 'rails_helper'

RSpec.describe "accounting_years/index", type: :view do
  before(:each) do
    assign(:accounting_years, [
      AccountingYear.create!(
        :year => 2
      ),
      AccountingYear.create!(
        :year => 2
      )
    ])
  end

  it "renders a list of accounting_years" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
