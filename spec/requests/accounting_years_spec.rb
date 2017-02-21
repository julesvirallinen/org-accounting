require 'rails_helper'

RSpec.describe "AccountingYears", type: :request do
  describe "GET /accounting_years" do
    it "works! (now write some real specs)" do
      get accounting_years_path
      expect(response).to have_http_status(200)
    end
  end
end
