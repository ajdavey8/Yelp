require 'rails_helper'

RSpec.describe "restaurants/edit", type: :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      :name => "MyString",
      :location => "MyString",
      :price_range => 1,
      :description => "MyText",
      :image => ""
    ))
  end

  it "renders the edit restaurant form" do
    render

    assert_select "form[action=?][method=?]", restaurant_path(@restaurant), "post" do

      assert_select "input[name=?]", "restaurant[name]"

      assert_select "input[name=?]", "restaurant[location]"

      assert_select "input[name=?]", "restaurant[price_range]"

      assert_select "textarea[name=?]", "restaurant[description]"

      assert_select "input[name=?]", "restaurant[image]"
    end
  end
end
