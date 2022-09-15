# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    before do
        @book = Book.new(:title => "harry potter", 
                         :price => 20,
                         :author => "JK Rowling",
                         :published_date => "2022-09-15 19:22:00 UTC")
    end
    
    describe "Book" do
        it 'checks title' do
            expect(@book.title).to eql("harry potter")
        end
        it 'checks author' do
            expect(@book.author).to eql("JK Rowling")
        end
        it 'checks price' do
            expect(@book.price).to eql(20)
        end
        it 'checks publish date' do
            expect(@book.published_date).to eql(Time.utc(2022, 9, 15, 19, 22, 0))
        end
    end
end