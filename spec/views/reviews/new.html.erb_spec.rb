require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :body => "MyText",
      :rating => 1,
      :title => "MyString"
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "textarea[name=?]", "review[body]"

      assert_select "input[name=?]", "review[rating]"

      assert_select "input[name=?]", "review[title]"
    end
  end
end
