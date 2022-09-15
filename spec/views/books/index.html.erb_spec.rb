require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        title: "Title",
        author: "Author",
        price: ""
      ),
      Book.create!(
        title: "Title",
        author: "Author",
        price: ""
      )
    ])
  end

  it "renders a list of books" do
    render
    
  end
end
