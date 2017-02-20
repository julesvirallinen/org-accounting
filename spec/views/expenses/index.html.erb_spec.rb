require 'rails_helper'

RSpec.describe "expenses/index", type: :view do
  before(:each) do
    assign(:expenses, [
      Expense.create!(
        :description => "Description",
        :receipt_url => "Receipt Url",
        :user_id => 2,
        :meeting_id => 3,
        :accepted => false,
        :bookkeeping => 4,
        :amount => 5
      ),
      Expense.create!(
        :description => "Description",
        :receipt_url => "Receipt Url",
        :user_id => 2,
        :meeting_id => 3,
        :accepted => false,
        :bookkeeping => 4,
        :amount => 5
      )
    ])
  end

  it "renders a list of expenses" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Receipt Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
