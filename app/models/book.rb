# == Schema Information
#
# Table name: books
#
#  id               :integer          not null, primary key
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
#  series_id  (series_id => series.id)
#  user_id    (user_id => users.id)
#
class Book < ApplicationRecord
  has_and_belongs_to_many :authors, join_table: :books_authors
  has_and_belongs_to_many :categories, join_table: :books_categories

  belongs_to :series, optional: true
  belongs_to :user, optional: true

  # def authors=(authors)
  #  authors = [authors] unless authors.instance_of? Array
  #
  #  import_authors = []

  #  authors.each do |author|
  #    if author.instance_of? Author
  #      import_authors << author
  #    elsif author.instance_of? String
  #      import_authors << Author.find_or_create_by(author)
  #  end
  # end

  def series=(new_series)
    super(new_series) if new_series.instance_of? Series
    super(Series.find_or_create_by(name: new_series)) if new_series.instance_of? String
  end

  # def categories=(to_add)
  #   to_add = [to_add] unless to_add.instance_of? Array
  #   import_categories = []
  #
  #  to_add.each do |category_data|
  #    if category_data.instance_of? Category
  #      import_categories << category_data
  #    elsif category_data.instance_of? String
  #      import_categories << Category.find_or_create_by(name: category_data.downcase)
  #    end
  #  end
  #
  #  super(import_categories)
  # end
end
