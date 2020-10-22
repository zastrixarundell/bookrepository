# == Schema Information
#
# Table name: books
#
#  id               :bigint           not null, primary key
#  alternative_name :string
#  name             :string           not null
#  price            :float            default(0.0)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  series_id        :integer
#  user_id          :integer
#
# Indexes
#
#  index_books_on_series_id  (series_id)
#  index_books_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (series_id => series.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
