# == Schema Information
#
# Table name: series
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Series < ApplicationRecord
  has_many :books
  has_many :authors, -> { distinct }, through: :books
end
