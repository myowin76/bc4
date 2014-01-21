require 'spec_helper'

describe "admin/companies/index" do
  before(:each) do
    assign(:admin_companies, [
      stub_model(Admin::Company,
        :name => "Name",
        :url => "Url",
        :renew_date => "Renew Date",
        :company_type => nil,
        :sector => nil,
        :country => nil,
        :reports_count => 1,
        :users_count => 2
      ),
      stub_model(Admin::Company,
        :name => "Name",
        :url => "Url",
        :renew_date => "Renew Date",
        :company_type => nil,
        :sector => nil,
        :country => nil,
        :reports_count => 1,
        :users_count => 2
      )
    ])
  end

  it "renders a list of admin/companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Renew Date".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
