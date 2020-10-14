# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
  has_and_belongs_to_many :books, join_table: :books_authors
  has_many :series, -> { distinct }, through: :books
end
