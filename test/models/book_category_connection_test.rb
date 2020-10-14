# == Schema Information
#
# Table name: book_category_connections
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  book_id     :integer          not null
#  category_id :integer          not null
#
# Indexes
#
#  index_book_category_connections_on_book_id      (book_id)
#  index_book_category_connections_on_category_id  (category_id)
#
# Foreign Keys
#
#  book_id      (book_id => books.id)
#  category_id  (category_id => categories.id)
#
require 'test_helper'

class BookCategoryConnectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
