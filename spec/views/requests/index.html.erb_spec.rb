require 'rails_helper'

RSpec.describe "requests/index", type: :view do
  before(:each) do
    assign(:requests, [
      Request.create!(
        :title => "Title",
        :description => "Description",
        :sender => "Sender",
        :senderemail => "Senderemail",
        :isActive => false,
        :id => 1
      ),
      Request.create!(
        :title => "Title",
        :description => "Description",
        :sender => "Sender",
        :senderemail => "Senderemail",
        :isActive => false,
        :id => 1
      )
    ])
  end

  it "renders a list of requests" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Sender".to_s, :count => 2
    assert_select "tr>td", :text => "Senderemail".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
