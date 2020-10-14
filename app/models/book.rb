# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  series_id  :integer
#
# Indexes
#
#  index_books_on_series_id  (series_id)
#
# Foreign Keys
#
#  series_id  (series_id => series.id)
#
class Book < ApplicationRecord
  has_many :book_author_connections
  has_many :authors, through: :book_author_connections

  belongs_to :series

  def author=(author)
    update(authors: [author])
  end
end
