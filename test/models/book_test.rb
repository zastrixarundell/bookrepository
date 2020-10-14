# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  series_id  :integer          not null
#
# Indexes
#
#  index_books_on_series_id  (series_id)
#
# Foreign Keys
#
#  series_id  (series_id => series.id)
#
require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
