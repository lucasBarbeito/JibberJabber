require 'rails_helper'

RSpec.describe "tweets/index", type: :view do
  before(:each) do
    assign(:tweets, [
      Tweet.create!(
        body: "MyText",
        user: nil
      ),
      Tweet.create!(
        body: "MyText",
        user: nil
      )
    ])
  end

  it "renders a list of tweets" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
