require 'rails_helper'

RSpec.describe "requests/show", type: :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :title => "Title",
      :description => "Description",
      :sender => "Sender",
      :senderemail => "Senderemail",
      :isActive => false,
      :id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Sender/)
    expect(rendered).to match(/Senderemail/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end
