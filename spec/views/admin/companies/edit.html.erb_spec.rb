require 'spec_helper'

describe "admin/companies/edit" do
  before(:each) do
    @admin_company = assign(:admin_company, stub_model(Admin::Company,
      :name => "MyString",
      :url => "MyString",
      :renew_date => "MyString",
      :company_type => nil,
      :sector => nil,
      :country => nil,
      :reports_count => 1,
      :users_count => 1
    ))
  end

  it "renders the edit admin_company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_company_path(@admin_company), "post" do
      assert_select "input#admin_company_name[name=?]", "admin_company[name]"
      assert_select "input#admin_company_url[name=?]", "admin_company[url]"
      assert_select "input#admin_company_renew_date[name=?]", "admin_company[renew_date]"
      assert_select "input#admin_company_company_type[name=?]", "admin_company[company_type]"
      assert_select "input#admin_company_sector[name=?]", "admin_company[sector]"
      assert_select "input#admin_company_country[name=?]", "admin_company[country]"
      assert_select "input#admin_company_reports_count[name=?]", "admin_company[reports_count]"
      assert_select "input#admin_company_users_count[name=?]", "admin_company[users_count]"
    end
  end
end
