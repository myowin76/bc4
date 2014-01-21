require 'spec_helper'

describe "admin/companies/show" do
  before(:each) do
    @admin_company = assign(:admin_company, stub_model(Admin::Company,
      :name => "Name",
      :url => "Url",
      :renew_date => "Renew Date",
      :company_type => nil,
      :sector => nil,
      :country => nil,
      :reports_count => 1,
      :users_count => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Renew Date/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
