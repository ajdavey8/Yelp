require 'rails_helper'

RSpec.describe "reviews/index", type: :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        :body => "MyText",
        :rating => 2,
        :title => "Title"
      ),
      Review.create!(
        :body => "MyText",
        :rating => 2,
        :title => "Title"
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
