require 'rails_helper'

RSpec.describe "user_books/index", type: :view do
  before(:each) do
    assign(:user_books, [
      UserBook.create!(
        user_id: "User",
        book_id: 2
      ),
      UserBook.create!(
        user_id: "User",
        book_id: 2
      )
    ])
  end

  it "renders a list of user_books" do
    render
    assert_select "tr>td", text: "User".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
