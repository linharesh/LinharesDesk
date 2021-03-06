require 'rails_helper'

RSpec.describe "requests/edit", type: :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :title => "MyString",
      :description => "MyString",
      :sender => "MyString",
      :senderemail => "MyString",
      :isActive => false,
      :id => 1
    ))
  end

  it "renders the edit request form" do
    render

    assert_select "form[action=?][method=?]", request_path(@request), "post" do

      assert_select "input#request_title[name=?]", "request[title]"

      assert_select "input#request_description[name=?]", "request[description]"

      assert_select "input#request_sender[name=?]", "request[sender]"

      assert_select "input#request_senderemail[name=?]", "request[senderemail]"

      assert_select "input#request_isActive[name=?]", "request[isActive]"

      assert_select "input#request_id[name=?]", "request[id]"
    end
  end
end
