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
  has_and_belongs_to_many :authors, join_table: :books_authors
  has_and_belongs_to_many :categories, join_table: :books_categories

  def categories=(to_add)
    to_add = [to_add] unless to_add.instance_of? Array
    import_categories = []

    to_add.each do |category_data|
      if category_data.instance_of? Category
        import_categories << category_data
      elsif category_data.instance_of? String
        import_categories << Category.find_or_create_by(name: category_data.downcase)
      end
    end

    super(import_categories)
  end

  belongs_to :series
end
