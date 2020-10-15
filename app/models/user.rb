# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  nickname   :string
#  phone      :string           not null
#  surname    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_many :books, dependent: :nullify

  scope :borrowed, -> { joins(:books).distinct }
  scope :free,     -> { left_joins(:books).where('books.user_id IS NULL') }
end
