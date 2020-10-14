# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  series_id  :integer          not null
#  user_id    :integer
#
# Indexes
#
#  index_books_on_series_id  (series_id)
#  index_books_on_user_id    (user_id)
#
# Foreign Keys
#
#  series_id  (series_id => series.id)
#  user_id    (user_id => users.id)
#
class Book < ApplicationRecord
  belongs_to :author
  belongs_to :categories
  belongs_to :series
  belongs_to :user
end
